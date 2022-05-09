package uniandes.tsdl.itdroid.translator;

public class GoogleTranslator implements TranslationInterface{

    @Override
    public void translate(String xmlPath, String inputLang, String outputLang) {
        System.out.println("Translating with Google");
    }

	@Override
	public void translateFlutter(String[] arbPaths, String inputLang, String outputLang) throws Exception {
		// TODO Auto-generated method stub
		
	}
}
