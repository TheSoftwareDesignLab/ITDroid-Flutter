package uniandes.tsdl.itdroid.helper;


import java.io.BufferedWriter;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.TokenSource;
import org.antlr.runtime.tree.CommonTree;
import org.antlr.v4.runtime.TokenStream;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.TrueFileFilter;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;
import org.antlr.v4.runtime.tree.Trees ;
import org.antlr.v4.tool.ast.GrammarAST;

import uniandes.tsdl.antlr.*;
import uniandes.tsdl.smali.LexerErrorInterface;
//import uniandes.tsdl.jflex.smaliFlexLexer;
public class ASTHelper {

	public static HashMap<Token,ArrayList<Token>> getAST(String sourcePath) {

		CharStream fis = null;
		File dartFile = new File(sourcePath);
		HashMap<Token,ArrayList<Token>> res= null;
		try {
			fis = CharStreams.fromFileName(sourcePath);
			Dart2Lexer lexer = new Dart2Lexer(fis);
			TokenStream tokens = (TokenStream) new CommonTokenStream(lexer);
			Dart2Parser parser = new Dart2Parser(tokens);


			ParseTree result = parser.compilationUnit();
			Dart2BaseListener listener = new Dart2BaseListener();
			ParseTreeWalker walker = new ParseTreeWalker();
			walker.walk(listener, result);
			ArrayList<Token> methods = listener.getMethods();
			ArrayList strings = listener.getStrings();
			System.out.println("entered getAST");
			res = makeHash(methods,strings);
			return res;
		} catch (Exception e){
			e.printStackTrace();
		}
		return res;
	}
	private static HashMap<Token,ArrayList<Token>> makeHash(ArrayList<Token> methods, ArrayList strings){
		HashMap<Token,ArrayList<Token>> hardcoded = new HashMap<Token,ArrayList<Token>>();
		
		//Iterator<Token> stringsIter = strings.iterator();
		try {
		ArrayList<Token> stringArray = strings;
		
		for (int i=0; i< methods.size(); i++) {
			ArrayList<Token> templist = new ArrayList<>();
			hardcoded.put((Token) methods.get(i), templist);
		}
		for (int i=0; i<methods.size(); i++) {
			Token currentMethod = (Token) methods.get(i);
			//Token nextMethod = (Token) methods.get(i+1);
			
			for( int j=0; j< stringArray.size(); j++) {
				//Integer stringLine = stringArray.get(j).getLine();
				if (currentMethod.getLine() <(stringArray.get(j).getLine())) {
					if ((i+1)< methods.size()) {
						if ((methods.get(i+1).getLine()) > stringArray.get(j).getLine()) {
							hardcoded.get(currentMethod).add(stringArray.get(j));
							
						}
					}else {
						hardcoded.get(currentMethod).add(stringArray.get(j));
					}
				}
			}
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return hardcoded;
	}

	public static CommonTree getFirstUncleNamedOfType(int type, String name, CommonTree t) {
		CommonTree parent = (CommonTree) t.getParent();
		List<CommonTree> uncles = (List<CommonTree>)((CommonTree)parent.getParent()).getChildren();
		for (int i = parent.getChildIndex()+1; i < uncles.size(); i++) {
			CommonTree tempUncle = (CommonTree) uncles.get(i);
			if(tempUncle.getType()==type && tempUncle.getChild(0).toStringTree().equals(name)) {
				return tempUncle;
			}
		}
		return null;
	}

	public static CommonTree getFirstBackUncleNamedOfType(int type, String name, CommonTree t) {
		CommonTree parent = (CommonTree) t.getParent();
		List<CommonTree> uncles = (List<CommonTree>)((CommonTree)parent.getParent()).getChildren();
		for (int i = parent.getChildIndex(); i > -1; i--) {
			CommonTree tempUncle = (CommonTree) uncles.get(i);
			if(tempUncle.getType()==type && tempUncle.getChild(0).toStringTree().equals(name)) {
				return tempUncle;
			}
		}
		return null;
	}

	public static CommonTree getFirstBrotherNamedOfType(int type, String name, CommonTree t) {
		CommonTree parent = (CommonTree) t.getParent();
		List<CommonTree> brothers = (List<CommonTree>)parent.getChildren();
		for (int i = t.getChildIndex()+1; i < brothers.size(); i++) {
			CommonTree tempBrother = (CommonTree) brothers.get(i);
			if(tempBrother.getType()==type && tempBrother.getChild(0).toStringTree().equals(name)) {
				return tempBrother;
			}
		}
		return null;
	}
/*
	public static CommonTree hasIPutAndIGet(CommonTree t) {
		CommonTree iput = getFirstUncleNamedOfType(Dart2Parser.I_STATEMENT_FORMAT22c_FIELD, "iput-object", t);
		if(iput!=null && iput.getLine()-t.getLine()<7)
		{
			List<CommonTree> cousins = (List<CommonTree>)iput.getChildren();
			String varName = cousins.get(4).toStringTree();
			CommonTree iget = getFirstBrotherNamedOfType(smaliParser.I_STATEMENT_FORMAT22c_FIELD, "iget-object", iput);
			while(iget!=null)
			{
				List<CommonTree> cousinss = (List<CommonTree>)iget.getChildren();
				if(cousinss.get(4).toStringTree().equals(varName)){
					return iget;
				} else {
					iget = getFirstBrotherNamedOfType(smaliParser.I_STATEMENT_FORMAT22c_FIELD, "iget-object", iget);
				}
			}
		}
		return null;
	}
*/
	public static boolean isValidLocation(CommonTree t){
		
		if(t.getType()==smaliParser.I_STATEMENT_FORMAT21c_STRING) {
			
			if(!t.getFirstChildWithType(smaliParser.INSTRUCTION_FORMAT21c_STRING).getText().equals("const-string")) {
				return false;
			}
			
			CommonTree brother = ASTHelper.getFirstBrotherNamedOfType(smaliParser.I_STATEMENT_FORMAT35c_METHOD, "invoke-virtual", t);
			
			if(brother != null && brother.getChildIndex()-t.getChildIndex()>2) {
				return false;
			}
			
			return true;
		}
				
		
		return false;
	}
/*
	private static boolean isNullOutputStream(CommonTree t) {
		String apis = "#Ljava/io/OutputStream;"
				+ "#Ljava/io/ByteArrayOutputStream;"
				+ "#Ljava/io/FileOutputStream;"
				+ "#Ljava/io/FilterOutputStream;"
				+ "#Ljava/io/ObjectOutputStream;"
				+ "#Ljava/io/PipedOutputStream;"
				+ "#Ljava/io/BufferedOutputStream;"
				+ "#Ljava/io/PrintStream;"
				+ "#Ljava/io/DataOutputStream;";
		if(apis.contains(t.getChild(2).toStringTree())
				&& t.getChild(3).toStringTree().equals("close")) {
			return true;
		}
		return false;
	}

	private static boolean isNullInputStream(CommonTree t) {
		String apis = "#Ljava/nio/channels/FileChannel;"
				+ "#Ljava/io/InputStream;"
				+ "#Ljava/io/BufferedInputStream;"
				+ "#Ljava/io/ByteArrayInputStream;"
				+ "#Ljava/io/DataInputStream;"
				+ "#Ljava/io/FilterInputStream;"
				+ "#Ljava/io/ObjectInputStream;"
				+ "#Ljava/io/PipedInputStream;"
				+ "#Ljava/io/SequenceInputStream;"
				+ "#Ljava/io/StringBufferInputStream;";
		if(apis.contains("#"+t.getChild(2).toStringTree()+"#")
				&& t.getChild(3).toStringTree().equals("close")) {
			return true;
		}
		return false;
	}

	private static boolean isNullBackendServiceReturn(CommonTree t) {
		CommonTree tree = (CommonTree) t.getFirstChildWithType(smaliParser.I_METHOD_PROTOTYPE);
		CommonTree treee = (CommonTree) tree.getFirstChildWithType(smaliParser.I_METHOD_RETURN_TYPE);
		String classs = treee.getChild(0).toString();
		return classs.equals("Lorg/apache/http/HttpResponse;");
	}

	private static boolean isOnCreateMethod(CommonTree t) {
		boolean resp = t.getChild(0).toString().equals("onCreate");
		if(resp) {
			CommonTree mProt = (CommonTree) t.getFirstChildWithType(smaliParser.I_METHOD_PROTOTYPE);
			resp = (mProt.getChildCount() == 2);
			if(resp) {
				resp = mProt.getChild(1).toString().equals("Landroid/os/Bundle;");
			}
		}
		return resp;
	}

	private static boolean isOnClickMethod(CommonTree t) {
		boolean resp = t.getChild(0).toString().equals("onClick");
		if(resp) {
			CommonTree mProt = (CommonTree) t.getFirstChildWithType(smaliParser.I_METHOD_PROTOTYPE);
			resp = (mProt.getChildCount() == 2);
			if(resp) {
				resp = mProt.getChild(1).toString().equals("Landroid/view/View;");
			}
		}
		return resp;
	}
*/
	public static int findHardCodedStrings(String folderPath, String extrasFolder, String packageName, String outputPath) throws IOException {
		BufferedWriter bw = new BufferedWriter(new FileWriter(outputPath+File.separator+"hcs.txt"));
		//folderPath = folderPath+File.separator+"dart";
		Collection<File> files = FileUtils.listFiles(new File(folderPath), TrueFileFilter.INSTANCE, TrueFileFilter.INSTANCE);
		int possibleIPFS = 0;
		for (File file : files) {
			if(file.getName().endsWith(".dart") ){
				String fileName = file.getName().replaceAll(".dart", "");
				System.out.println("- -- -- -- printing file name");
				System.out.println(fileName);
				HashMap<Token, ArrayList<Token>> list = ASTHelper.getAST(file.getAbsolutePath());
				bw.write(fileName);
				bw.newLine();
				Set<Token> keys = list.keySet();
				Iterator<Token> keysIter = keys.iterator();
				while(keysIter.hasNext()) {
					Token method = keysIter.next();
					bw.write("\t"+method.getText() + " line: " + method.getLine() );
					bw.newLine();
					List<Token> keyStrings = list.get(method);
					possibleIPFS+=keyStrings.size();
					for (Iterator<Token> iterator = keyStrings.iterator(); iterator.hasNext();) {
						Token hardcodedString = iterator.next();
						bw.write("\t\t"+hardcodedString.getText() + " line: " + hardcodedString.getLine() );
						bw.newLine();
					}
				}
			}
		}
		System.out.println("There are "+possibleIPFS+" hardcoded strings in your app. These strings are are shown in hcs.txt file stored in output folder.");
		bw.close();
		return possibleIPFS;
	}
	/*
	private static  HashMap<String, List<String>> processFile(String filePath, String projectPath, String extrasFolder){

		HashMap<String, List<String>> stringLocations = new HashMap<>();

		try {

			//Getting AST from file
			CommonTree cu = ASTHelper.getAST(filePath);

			TreeVisitorInstance ttv = new TreeVisitorInstance(filePath);
			ttv.visit(cu, null);

			HashSet<CommonTree> calls = ttv.getCalls();

			Iterator<CommonTree> a = calls.iterator();
			while(a.hasNext()){
				CommonTree b = a.next();
				String text = b.getFirstChildWithType(smaliParser.STRING_LITERAL).getText();
				String method = getParentOfType(smaliParser.I_METHOD, b).getFirstChildWithType(smaliParser.SIMPLE_NAME).getText();
				if(stringLocations.get(method) == null) {
					List<String> templist = new ArrayList<>();
					stringLocations.put(method, templist);
				}
				stringLocations.get(method).add(text);
			}
			
		} catch(Exception e){
			e.printStackTrace();
		}

		return stringLocations;
	}
*/
	private static CommonTree getParentOfType(int iMethod, CommonTree b) {
		CommonTree parent = (CommonTree) b.getParent();
		while(parent.getType()!=iMethod) {
			parent = (CommonTree) parent.getParent();
		}
		return parent;
	}

}
