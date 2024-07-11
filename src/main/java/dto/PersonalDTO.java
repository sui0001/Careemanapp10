package dto;

public class PersonalDTO {
    private String userId; // ユーザID
    private int personal_id; // パーソナルID
    private String goal; // 目標
    private String link_resume; // 履歴書のリンク
    private String link_work_history; // 職務経歴書のリンク


    // コンストラクタ
    public PersonalDTO(String userId, int personal_id, String goal, String link_resume, String link_work_history) {
        this.userId = userId;
        this.personal_id = personal_id;
        this.goal = goal;
        this.link_resume = link_resume;
        this.link_work_history = link_work_history;
    }


    // GetterとSetter
	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public int getPersonal_id() {
		return personal_id;
	}


	public void setPersonal_id(int personal_id) {
		this.personal_id = personal_id;
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


