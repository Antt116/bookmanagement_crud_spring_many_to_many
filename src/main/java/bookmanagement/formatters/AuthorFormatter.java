package bookmanagement.formatters;

import java.text.ParseException;
import java.util.Locale;

import org.springframework.format.Formatter;

import bookmanagement.models.Author;

public class AuthorFormatter implements Formatter<Author>{

	@Override
	public String print(Author object, Locale locale) {
		
		return null;
	}

	@Override
	public Author parse(String text, Locale locale) throws ParseException {
		// TODO Auto-generated method stub
		Author author = new Author();
		int id = Integer.parseInt(text);
		author.setId(id);
		return author;
	}
	
}
