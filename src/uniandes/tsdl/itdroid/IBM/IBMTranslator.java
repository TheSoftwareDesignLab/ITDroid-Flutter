package uniandes.tsdl.itdroid.IBM;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.ibm.watson.developer_cloud.language_translator.v3.LanguageTranslator;
import com.ibm.watson.developer_cloud.language_translator.v3.model.TranslateOptions;
import com.ibm.watson.developer_cloud.language_translator.v3.model.Translation;
import com.ibm.watson.developer_cloud.language_translator.v3.model.TranslationResult;
import com.ibm.watson.developer_cloud.service.security.IamOptions;

import io.github.cdimascio.dotenv.Dotenv;
import uniandes.tsdl.itdroid.helper.NotTranslatableStringsDictionary;
import uniandes.tsdl.itdroid.translator.TranslationInterface;

public class IBMTranslator implements TranslationInterface {

    private static final String OUTPUT_FOLDER = "./temp/res/values";
    private static final String NO_ATTRIBUTE_FOUND = "NOT_FOUND";
    private static final int TRANSLATOR_PACKAGE_SIZE = 50;

    private List<String> values;
    private List<String> names;
    private List<String> formatted;
    private String propertiesDirectory;
    public IBMTranslator(String directory){
        values = new ArrayList<>();
        names = new ArrayList<>();
        formatted = new ArrayList<>();
        propertiesDirectory = directory;
    }
    @Override
    public void translate(String xmlPath, String inputLang, String outputLang) throws Exception {
        Dotenv dotenv = Dotenv.load();
        System.out.println(dotenv.get("GATEWAY"));
        //Initialize the dictionary to exclude automatically translated strings.
        NotTranslatableStringsDictionary dictionary = new NotTranslatableStringsDictionary(propertiesDirectory);
        //Read the default strings.xml file
        SAXBuilder builder = new SAXBuilder();
        File xmlFile = new File(xmlPath);
        Document document = builder.build(xmlFile);

        // Initialize set to manage strings that are already translated
        Set<String> translatedStrings = new HashSet<>();
        // Read the language specific strings.xml file
        SAXBuilder builder2 = new SAXBuilder();
        File xmlOutputFolder = new File(OUTPUT_FOLDER + "-" + outputLang + "/");
        File xmlOutputFile = new File(OUTPUT_FOLDER + "-" + outputLang + "/strings.xml");
        // Create the output directory if it doesn't exists.
        if(!xmlOutputFolder.exists()){
        	xmlOutputFolder.mkdirs();
            xmlOutputFile.createNewFile();
            BufferedWriter writer = new BufferedWriter(new FileWriter(xmlOutputFile));
            writer.write("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
            writer.newLine();
            writer.write("<resources>");
            writer.newLine();
            writer.write("</resources>");
            writer.newLine();
            writer.close();
        }
        Document outputDocument = builder2.build(xmlOutputFile);
        Element outputRoot = outputDocument.getRootElement();
        //Get the strings that were previously translated by the developer.
        List<Element> strings2 = outputRoot.getChildren();
        for(int i = 0; i < strings2.size(); i++){
            translatedStrings.add(strings2.get(i).getAttributeValue("name"));
        }
        // Get the root element from the default strings xml file.
        Element root = document.getRootElement();
        List<Element> strings = root.getChildren();
        //Extract the strings that should be translated
        Element e;
        String attributeValue;
        String text;
        String attributeFormatted;
        for(int i = 0; i < strings.size(); i++){
            e = strings.get(i);
            attributeValue = e.getAttributeValue("name");
            attributeFormatted = e.getAttributeValue("formatted", NO_ATTRIBUTE_FOUND);
            text = e.getText();
            //If the string has not been translated, add it to the list
            if(dictionary.translatable(attributeValue) && !(translatedStrings.contains(attributeValue))&& !isOnlyNumbersAndSpecs(text) && !text.startsWith("@")){
                text = replaceInjectedStrings1(text);
                text = replaceInjectedDigits1(text);
                text = replaceInjectedStrings3(text);
                values.add(text);
                names.add(attributeValue);
                formatted.add(attributeFormatted);
            }
        }

        int index = 0;
        List<String> toTranslate;
        List<String> fullTranslations = new ArrayList();
        while (index < values.size()){
            toTranslate = new ArrayList();
            for(int i = index; (i <  (index + TRANSLATOR_PACKAGE_SIZE)); i++) {
                if(i >= values.size()){
                    break;
                } else {
                    toTranslate.add(values.get(i));
                }
            }
            //Call the IBM API to translate strings.
            IamOptions options = new IamOptions.Builder().apiKey(dotenv.get("API_KEY")).build();
            LanguageTranslator languageTranslator = new LanguageTranslator(
                    "2018-05-01",
                    options);
            System.out.println("model: " + inputLang + "-" + outputLang);
            languageTranslator.setEndPoint(dotenv.get("GATEWAY"));
            TranslateOptions translateOptions = new TranslateOptions.Builder().text(toTranslate).modelId(inputLang + '-' + outputLang).build();
            //Get the translation results.
            TranslationResult result = languageTranslator.translate(translateOptions)
                    .execute();
            List<Translation> translations = result.getTranslations();

            for(int i = 0; i < translations.size(); i++){
                fullTranslations.add(translations.get(i).getTranslationOutput());
            }

            index += TRANSLATOR_PACKAGE_SIZE;
        }


        //Add the translated strings to the specific language strings.xml file.
        Element newString;
        String text2;
        String attributeFormatted2;
        for (int i = 0; i < fullTranslations.size(); i++){
            newString = new Element("string");
            newString.setAttribute("name", names.get(i));
            attributeFormatted2 = formatted.get(i);
            if(!attributeFormatted2.equals(NO_ATTRIBUTE_FOUND)){
                newString.setAttribute("formatted", attributeFormatted2);
            }
            text2 = replaceUnscapedCharacters(fullTranslations.get(i));
            text2 = replaceInjectedStrings2(text2);
            text2 = replaceInjectedDigits2(text2);
            text2 = replaceInjectedStrings4(text2);
            newString.setText(text2);
            outputRoot.addContent(newString);
        }
        //Save changes.
        XMLOutputter output = new XMLOutputter();
        output.setFormat(Format.getPrettyFormat());
        output.output(outputDocument, new OutputStreamWriter(new FileOutputStream(xmlOutputFile), "UTF8"));
    }
    @Override
    public void translateFlutter(String[] arbPaths, String inputLang, String outputLang, String baseDir, String prefix) throws Exception {
        Dotenv dotenv = Dotenv.load();
        System.out.println(dotenv.get("GATEWAY"));
		
        //Initialize the dictionary to exclude automatically translated strings.
        //Read the default strings.xml file
        SAXBuilder builder = new SAXBuilder();
        File arbFile = new File(arbPaths[0]);

 
		
        // Initialize set to manage strings that are already translated
        Set<String> translatedStrings = new HashSet<>();
        // Read the language specific strings.xml file
        SAXBuilder builder2 = new SAXBuilder();
        File arbOutputFolder = new File(OUTPUT_FOLDER + "-" + outputLang + "/");
        File arbOutputFile = new File(baseDir+ "/" + prefix +"_"+ outputLang +".arb");
        // Create the output directory if it doesn't exists.
        if(!arbOutputFile.exists()){
        	Gson gson = new Gson();
            arbOutputFile.createNewFile();
            FileWriter writer2 = new FileWriter(arbOutputFile);
            JsonObject jsonInit = new JsonObject();
            jsonInit.addProperty("xyzInIt",0);
            gson.toJson(jsonInit, writer2);
            writer2.flush();
            writer2.close();
       }
        //Document outputDocument = builder2.build(arbOutputFile);
        //Element outputRoot = outputDocument.getRootElement();
        
        //Flutter Flow
        Reader reader = new FileReader(baseDir + "/"+prefix+ "_" +outputLang +".arb");
        Gson gson = new Gson();
		JsonElement json = gson.fromJson(reader, JsonElement.class);
		JsonObject jsonArb = json.getAsJsonObject();
		Set<String> keys = jsonArb.keySet();
		
        //Getting the keys of the target arb
        Iterator<String> itr = keys.iterator();
		while(itr.hasNext()){
			String key = itr.next();
			if(!key.startsWith("@")) {
				
				translatedStrings.add(key);
			}
		}
 
        //Extract the strings that the default has and the target doesnt 
        
        Reader reader2 = new FileReader(arbPaths[0]);
        Gson gson2 = new Gson();
		JsonElement json2 = gson2.fromJson(reader2, JsonElement.class);
		JsonObject jsonArb2 = json2.getAsJsonObject();
		Set<String> keys2 = jsonArb2.keySet();
		
	    String attributeValue;
	    String text;
        Iterator<String> itr2 = keys2.iterator();
		while(itr2.hasNext()){
			String key = itr2.next();
			attributeValue = key;
			text = jsonArb2.get(key).toString();
			String[] hey =key.split("@");
			if(!(translatedStrings.contains(attributeValue))&& !isOnlyNumbersAndSpecs(text) && !key.startsWith("@")) {
	            text = replaceInjectedSpace1(text);
                //text = replaceInjectedDigits1(text);
                text = replaceInjectedStrings3(text);
                text = replaceInjectedDot1(text);
                text = replaceInjectedQuestion1(text);
                //text = replaceInjectedDotEnd1(text);
               //System.out.println(text);
                values.add(text);
                names.add(attributeValue);
			}

		 }

        int index = 0;
        List<String> toTranslate;
        List<String> fullTranslations = new ArrayList();
        while (index < values.size()){
            toTranslate = new ArrayList();
            for(int i = index; (i <  (index + TRANSLATOR_PACKAGE_SIZE)); i++) {
                if(i >= values.size()){
                    break;
                } else {
                    toTranslate.add(values.get(i));
                    
                }
            }
            //Call the IBM API to translate strings.
            IamOptions options = new IamOptions.Builder().apiKey(dotenv.get("API_KEY")).build();
            LanguageTranslator languageTranslator = new LanguageTranslator(
                    "2018-05-01",
                    options);
            System.out.println("model: " + inputLang + "-" + outputLang);
            languageTranslator.setEndPoint(dotenv.get("GATEWAY"));
            TranslateOptions translateOptions = new TranslateOptions.Builder().text(toTranslate).modelId(inputLang + '-' + outputLang).build();
            //Get the translation results.
            TranslationResult result = languageTranslator.translate(translateOptions)
                    .execute();
            List<Translation> translations = result.getTranslations();

            for(int i = 0; i < translations.size(); i++){
                fullTranslations.add(translations.get(i).getTranslationOutput());
                //System.out.println(translations.get(i).getTranslationOutput());
            }

            index += TRANSLATOR_PACKAGE_SIZE;
        }

        //Add the translated strings to the specific language arb file.
        //The existing file is read and the translated strings are added and then the file is rewritten
        Reader readerFile = new FileReader(arbOutputFile);
        //.setPrettyPrinting().disableHtmlEscaping()
		Gson gson3 = new GsonBuilder().create();
		JsonElement jsonFile = gson3.fromJson(readerFile, JsonElement.class);	
		JsonObject jsonArbFile = jsonFile.getAsJsonObject();
        String text2;
        JsonElement response;
        JsonParser parser = new JsonParser();
        for (int i = 0; i < fullTranslations.size(); i++){
        	text2= fullTranslations.get(i);
            //text2 = replaceUnscapedCharacters(fullTranslations.get(i));
            //text2 = replaceInjectedSpace2(fullTranslations.get(i));
            //text2 = replaceInjectedDigits2(text2);
        	text2= replaceInjectedSpace2(text2);
            text2 = replaceInjectedStrings4(text2);
        	text2 = replaceInjectedDot2(text2);
        	text2 = replaceEndDot(text2);
        	text2 = replaceInjectedu0027(text2);
        	text2 = replaceInjectedQuestion2(text2);
        	
        	
        	//JsonElement jsonString = parser.parse(text2); 
        	//text2 = text2.replaceAll("[.]$","");
        	System.out.println(text2);
        	JsonElement element = gson.fromJson (text2, JsonElement.class);
        	
            jsonArbFile.add(names.get(i),element);
        }
        //Save changes.
        FileWriter writer = new FileWriter(arbOutputFile);
        gson.toJson(jsonArbFile, writer);
        writer.flush();
        writer.close();
    }
    /**
     * Checks if a string only contains numbers and special characters
     * @param string
     * @return
     */
    public boolean isOnlyNumbersAndSpecs(String string){
        return string.matches("[\\d-/@#$%^&_+=():sd\\s]+");
    }

    /**
     * Replaces " and ' that are unscaped.
     * @param text
     * @return
     */
    public static String replaceUnscapedCharacters(String text) {
        String modifier1 = text.replaceAll("(?<!\\\\)\"", "\\\\\"");
        String modifier2 = modifier1.replaceAll("(?<!\\\\)\'", "\\\\\'");
        return modifier2;
    }
    
    public static String replaceUnscapedCharacters2(String text) {
        String modifier1 = text.replaceAll("(?<!\\\\)\"", "\\\\\"");
        String modifier2 = modifier1.replaceAll("(?<!\\\\)\'", "\\\\\'");
        return modifier2;
    }

    /**
     * Replaces the injected strings for non translatable strings
     * @param input
     * @return
     */
    public static String  replaceInjectedStrings1 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("%\\d\\$s");
        Matcher matcher = pattern.matcher(repleaceable);
        while(matcher.find()) {
            String injectedCharacter = matcher.group(0);
            char number = injectedCharacter.charAt(1);
            repleaceable = matcher.replaceFirst("xyz" + number);
            matcher = pattern.matcher(repleaceable);
        }

        return repleaceable;
    }
    
    public static String  replaceInjectedSpace1 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("\\\\n");
        Matcher matcher = pattern.matcher(repleaceable);
        while(matcher.find()) {
            String injectedCharacter = matcher.group(0);
            char number = injectedCharacter.charAt(1);
            repleaceable = matcher.replaceFirst("spx");
            matcher = pattern.matcher(repleaceable);
        }

        return repleaceable;
    }
    
    
    public static String  replaceInjectedDot1 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("[.]");
        Matcher matcher = pattern.matcher(repleaceable);
        while(matcher.find()) {
            String injectedCharacter = matcher.group(0);
            repleaceable = matcher.replaceFirst("DDOTO");
            matcher = pattern.matcher(repleaceable);
        }

        return repleaceable;
    }
    
    public static String  replaceEndDot(String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("[.]");
        Matcher matcher = pattern.matcher(repleaceable);
        while(matcher.find()) {
            String injectedCharacter = matcher.group(0);
            repleaceable = matcher.replaceFirst("");
            matcher = pattern.matcher(repleaceable);
        }

        return repleaceable;
    }
 
    public static String replaceInjectedDot2 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("DDOTO");
        Matcher matcher = pattern.matcher(repleaceable);
        while(matcher.find()) {
            String injectedCharacter = matcher.group(0);
            repleaceable = matcher.replaceFirst("\\.");
            matcher = pattern.matcher(repleaceable);
        }
        return repleaceable;

    }
    
    public static String  replaceInjectedu0027 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("\\u0027");
        Matcher matcher = pattern.matcher(repleaceable);
        while(matcher.find()) {
            String injectedCharacter = matcher.group(0);
            repleaceable = matcher.replaceFirst(" ");
            matcher = pattern.matcher(repleaceable);
        }

        return repleaceable;
    }
 
    public static String replaceInjectedSpace2 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("spx");
        Matcher matcher = pattern.matcher(repleaceable);
        while(matcher.find()) {
            String injectedCharacter = matcher.group(0);
            repleaceable = matcher.replaceFirst("\\\n");
            matcher = pattern.matcher(repleaceable);
        }
        return repleaceable;

    }
    /**
     * Replaces the non translatable string for the injected parameters values.
     * @param input
     * @return
     */
    public static String replaceInjectedStrings2 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("xyz\\d");
        Matcher matcher = pattern.matcher(repleaceable);
        while(matcher.find()) {
            String injectedCharacter = matcher.group(0);
            char number = injectedCharacter.charAt(3);
            repleaceable = matcher.replaceFirst("%" + number + "\\$s");
            matcher = pattern.matcher(repleaceable);
        }
        return repleaceable;

    }
    /**
     * Replaces the injected digits for non translatable strings
     * @param input
     * @return
     */
    public static String  replaceInjectedDigits1 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("%\\d\\$d");
        Matcher matcher = pattern.matcher(repleaceable);
        while(matcher.find()) {
            String injectedCharacter = matcher.group(0);
            char number = injectedCharacter.charAt(1);
            repleaceable = matcher.replaceFirst("jkl" + number);
            matcher = pattern.matcher(repleaceable);
        }

        return repleaceable;
    }
    /**
     * Replaces the non translatable string for the injected parameters values.
     * @param input
     * @return
     */
    public static String replaceInjectedDigits2 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("jkl\\d");
        Matcher matcher = pattern.matcher(repleaceable);
        while(matcher.find()) {
            String injectedCharacter = matcher.group(0);
            char number = injectedCharacter.charAt(3);
            repleaceable = matcher.replaceFirst("%" + number + "\\$d");
            matcher = pattern.matcher(repleaceable);
        }
        return repleaceable;

    }

    public static String replaceInjectedStrings3 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("(\\\\\")+");
        Matcher matcher = pattern.matcher(repleaceable);
        if(matcher.find()) {
            repleaceable = matcher.replaceAll("dfg");
        }

        return repleaceable;

    }

    public static String replaceInjectedStrings4 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("dfg");
        Matcher matcher = pattern.matcher(repleaceable);
        if(matcher.find()) {
            repleaceable = matcher.replaceAll("\\\\\"");
        }

        return repleaceable;

    }
    
    public static String replaceInjectedQuestion1 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("\\?");
        Matcher matcher = pattern.matcher(repleaceable);
        if(matcher.find()) {
            repleaceable = matcher.replaceAll("qrru#");
        }

        return repleaceable;

    }

    public static String replaceInjectedQuestion2 (String input) {
        String repleaceable = input;
        Pattern pattern = Pattern.compile("qrru#");
        Matcher matcher = pattern.matcher(repleaceable);
        if(matcher.find()) {
            repleaceable = matcher.replaceAll("\\?");
        }

        return repleaceable;

    }
}
