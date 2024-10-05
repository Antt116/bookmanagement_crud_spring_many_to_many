package bookmanagement.models;

import javax.validation.constraints.NotEmpty;

//Author DTO (Data Transfer Object)
public class Author {
	private int id;
	@NotEmpty
	private String name;
	private String address;
	private String copyright_contact;
	private String contact_email;
	
	public Author() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCopyright_contact() {
		return copyright_contact;
	}

	public void setCopyright_contact(String copyright_contact) {
		this.copyright_contact = copyright_contact;
	}

	public String getContact_email() {
		return contact_email;
	}

	public void setContact_email(String contact_email) {
		this.contact_email = contact_email;
	}
}