package uniandes.tsdl.itdroid.translator;

public interface TranslationInterface {
    void translate(String xmlPath, String inputLang, String outputLang) throws Exception;
    void translateFlutter(String[] arbPaths, String inputLang, String outputLang, String baseDir, String prefix) throws Exception;
}
