package domain;

public class Accounts {
	private String user_id; // ユーザID
	private String pass; // パスワード
	private String mail; // メールアドレス
	private String name; // 名前
	private int age; // 年齢
    private String goal; // 目標
    private String link_resume; // 履歴書のリンク
    private String link_work_history; // 職務経歴書のリンク

	public Accounts(String user_id, String pass, String mail, String name, int age, String goal, String link_resume, String link_work_history) {
		this.user_id = user_id;
		this.pass = pass;
		this.mail = mail;
		this.name = name;
		this.age = age;
		this.goal = goal;
		this.link_resume = link_resume;
		this.link_work_history = link_work_history;
	}

	public Accounts(String user_id, String pass, String mail, String name, int age){
		this.user_id = user_id;
		this.pass = pass;
		this.mail = mail;
		this.name = name;
		this.age = age;
	}
	

	// GetterとSetter
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGoal() {
		return goal;
	}

	public void setGoal(String goal) {
		this.goal = goal;
	}

	public String getLink_resume() {
		return link_resume;
	}

	public void setLink_resume(String link_resume) {
		this.link_resume = link_resume;
	}

	public String getLink_work_history() {
		return link_work_history;
	}

	public void setLink_work_history(String link_work_history) {
		this.link_work_history = link_work_history;
	}
	
}
