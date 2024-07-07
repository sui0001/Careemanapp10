package dto;

public class LoginDTO {
	private String mail;
	private String pass;

	public LoginDTO(String mail, String pass) {
		this.mail = mail;
		this.pass = pass;
	}
	
	public String getMail() {
		return mail;
	}
	
	public String getPass() {
		return pass;
	}

}
