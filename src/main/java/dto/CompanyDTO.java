package dto;

public class CompanyDTO {
	private String userId; // ユーザID
	private int company_id; // 企業ID : 主キー
	private String company_name; // 企業名
	private String selection_application; // 応募媒体
	private String selection_status; // 選考状況
	private String selection_date; // 日程
	private String selection_flow; // 選考フロー
	private String link_hp; // HPリンク
	private String link_review; // 口コミリンク
	private String selection_task; // タスク内容
	private String selection_motivation; // 志望動機
	private String positive_points; // 良い点
	private String negative_points; // 懸念点
	private String points_to_confirm; // 確認事項

    
    public CompanyDTO(String userId, int company_id, String company_name, String selection_application, String selection_status, String selection_date, String selection_flow, String link_hp, String link_review, String selection_task, String selection_motivation, String positive_points, String negative_points, String points_to_confirm) {
        this.userId = userId;
		this.company_id = company_id;
        this.company_name = company_name;
        this.selection_application = selection_application;
        this.selection_status = selection_status;
        this.selection_date = selection_date;
        this.selection_flow = selection_flow;
        this.link_hp = link_hp;
        this.link_review = link_review;
        this.selection_task = selection_task;
        this.selection_motivation = selection_motivation;
        this.positive_points = positive_points;
        this.negative_points = negative_points;
        this.points_to_confirm = points_to_confirm;
    }

    
    // GetterとSetter
	public String getUser_id() {
		return userId;
	}

	public void setUser_id(String userId) {
		this.userId = userId;
	}

	public int getCompany_id() {
		return company_id;
	}

	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getSelection_application() {
		return selection_application;
	}

	public void setSelection_application(String selection_application) {
		this.selection_application = selection_application;
	}

	public String getSelection_status() {
		return selection_status;
	}

	public void setSelection_status(String selection_status) {
		this.selection_status = selection_status;
	}

	public String getSelection_date() {
		return selection_date;
	}

	public void setSelection_date(String selection_date) {
		this.selection_date = selection_date;}

	public String getSelection_flow() {
		return selection_flow;
	}

	public void setSelection_flow(String selection_flow) {
		this.selection_flow = selection_flow;
	}

	public String getLink_hp() {
		return link_hp;
	}

	public void setLink_hp(String link_hp) {
		this.link_hp = link_hp;
	}

	public String getLink_review() {
		return link_review;
	}

	public void setLink_review(String link_review) {
		this.link_review = link_review;
	}

	public String getSelection_task() {
		return selection_task;
	}

	public void setSelection_task(String selection_task) {
		this.selection_task = selection_task;
	}

	public String getSelection_motivation() {
		return selection_motivation;
	}

	public void setSelection_motivation(String selection_motivation) {
		this.selection_motivation = selection_motivation;
	}

	public String getPositive_points() {
		return positive_points;
	}

	public void setPositive_points(String positive_points) {
		this.positive_points = positive_points;
	}

	public String getNegative_points() {
		return negative_points;
	}

	public void setNegative_points(String negative_points) {
		this.negative_points = negative_points;
	}

	public String getPoints_to_confirm() {
		return points_to_confirm;
	}

	public void setPoints_to_confirm(String points_to_confirm) {
		this.points_to_confirm = points_to_confirm;
	}

    
}
