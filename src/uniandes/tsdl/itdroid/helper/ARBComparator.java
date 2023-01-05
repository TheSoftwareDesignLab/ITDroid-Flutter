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
					String key = itr.next();
					String[] hey =key.split("@");
					if(!hey[0].equals("")) {
						originalStrings.add(hey[0]);
					}

				}
				File file2;
				List<Element> strings2;
				Element root2;
				Set<String> translatedStrings;
				Gson gson2 = new Gson();
				for (int i =1; i < arbs.length; i++) {
					file2 = new File(arbs[i]);
					if(file2.exists()){
						Reader reader2 = new FileReader(arbs[i]);
						JsonElement json2 = gson.fromJson(reader2, JsonElement.class);
						JsonObject jsonArb2 = json2.getAsJsonObject();
						Set<String> keys2 = jsonArb2.keySet();
						translatedStrings = new HashSet<>();
						Iterator<String> itr2 = keys2.iterator();
						while(itr2.hasNext()){
								translatedStrings.add(itr2.next());
								//System.out.println(itr2.next());
						}

						Set <String> difference = new HashSet(originalStrings);
						difference.removeAll(translatedStrings);
						/*
						Iterator<String> diff = difference.iterator();
						System.out.println(". . .. .. . .. . ");
						System.out.println("difference with: "+ arbs[i]);
						while(diff.hasNext()){
								String hehe= diff.next();
								translatedStrings.add(hehe);
			
								System.out.println(hehe);
						}
						*/
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
