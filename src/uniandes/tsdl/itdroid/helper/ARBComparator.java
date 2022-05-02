package uniandes.tsdl.itdroid.helper;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathExpressionException;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;
import org.xml.sax.SAXException;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

public class ARBComparator {

	ArrayList<String> useful = new ArrayList<>();
	ArrayList<String> useless = new ArrayList<>();
	private int numLinesUseless = 29;
	private int numLineasFont = 12;
	/*
	 * Constructor Method
	 * @params
	 * xmls represents and array of absolute paths where the string.xml files are supposed to be.
	 * alpha represents the tolerance level of untranslated strings
	 */
	public ARBComparator(String[] arbs,Integer alpha, String directory){
		
		File inputFile = null;
		try {
			if(arbs != null) {
				Reader reader = new FileReader(arbs[0]);
				//I have to make a new set of safewords and dictionary
				NotTranslatableARBStrings dictionary = new NotTranslatableARBStrings(directory);
				//Read the default strings.xml file
				SAXBuilder builder = new SAXBuilder();
				Gson gson = new Gson();
				JsonElement json = gson.fromJson(reader, JsonElement.class);
				JsonObject jsonArb = json.getAsJsonObject();
				Set<String> keys = jsonArb.keySet();
				Set<String> originalStrings = new HashSet<>();
				// Initialize set to manage the default strings
				//Get default strings
				Iterator<String> itr = keys.iterator();
				String stringName;
				while(itr.hasNext()){
						originalStrings.add(itr.next());
						
				}
				/*
				File file2;
				SAXBuilder builder2 = new SAXBuilder();
				Document document2;
				List<Element> strings2;
				Element root2;
				Set<String> translatedStrings;
				for (int i =1; i < arbs.length; i++) {
					file2 = new File(arbs[i]);
					if(file2.exists()){
						document2 = builder2.build(file2);
						root2 = document2.getRootElement();
						strings2 = root2.getChildren();
						Element e2;
						String string2Name;
						translatedStrings = new HashSet<>();
						for(int j = 0; j < strings2.size(); j++){
							e2 = strings2.get(j);
							string2Name = e2.getAttributeValue("name");
							if(dictionary.translatable(string2Name)){
								translatedStrings.add(string2Name);
							}
						}

						Set <String> difference = new HashSet(originalStrings);
						difference.removeAll(translatedStrings);
						if(difference.size() > alpha){
							useless.add(arbs[i]);
						}
						else{
							useful.add(arbs[i]);
						}
					} else{
						useless.add(arbs[i]);
					}
				}
				*/
			}
			
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (XPathExpressionException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}


	}
	
	public ArrayList<String>  getUsefull(){
		return useful;
	}
	
	public ArrayList<String> getUseLess(){
		return useless;
	}
}
