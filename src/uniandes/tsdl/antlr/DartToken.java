package uniandes.tsdl.antlr;

import org.antlr.runtime.CharStream;
import org.antlr.runtime.Token;
public class DartToken implements Token {
	
	private String tokenText;
	private int tokenType;
	private int tokenLine;

	@Override
	public String getText() {
		// TODO Auto-generated method stub
		return tokenText;
	}

	@Override
	public void setText(String text) {
		tokenText=text;
		
	}

	@Override
	public int getType() {
		// TODO Auto-generated method stub
		return tokenType;
	}

	@Override
	public void setType(int ttype) {
		// TODO Auto-generated method stub
		tokenType=ttype;
		
	}

	@Override
	public int getLine() {
		// TODO Auto-generated method stub
		return tokenLine;
	}

	@Override
	public void setLine(int line) {
		// TODO Auto-generated method stub
		tokenLine = line;
		
	}

	@Override
	public int getCharPositionInLine() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void setCharPositionInLine(int pos) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getChannel() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void setChannel(int channel) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getTokenIndex() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void setTokenIndex(int index) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public CharStream getInputStream() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setInputStream(CharStream input) {
		// TODO Auto-generated method stub
		
	}

}
