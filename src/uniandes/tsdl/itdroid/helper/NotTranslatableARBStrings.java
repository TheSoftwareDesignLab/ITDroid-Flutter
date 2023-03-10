package uniandes.tsdl.itdroid.helper;

import java.io.File;
import java.util.Hashtable;
import java.util.List;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;

public class NotTranslatableARBStrings {
	 private Hashtable<String, String> diccionario;

	    public NotTranslatableARBStrings(String pDirectory) throws Exception{
	        diccionario = new Hashtable<>(70);
	        SAXBuilder builder = new SAXBuilder();
	        File xmlFile = new File(pDirectory + "/strings.xml");
	        Document document = builder.build(xmlFile);

	        Element root = document.getRootElement();
	        List<Element> strings = root.getChildren();

	        Element e;
	        for(int i = 0; i < strings.size(); i++){
	            e = strings.get(i);
	            diccionario.put(e.getAttributeValue("name"), e.getText());
	        }
	    }

	    public boolean translatable (String key){
	        return !(diccionario.containsKey(key));
	    }
}
