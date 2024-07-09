package dto;

public class InterviewDTO {
	private int company_id; // 企業ID
	private int interview_id; // 面接ID : 主キー
	private String interview_date; // 面接日程
	private String interviewer_name; // 面接担当者
	private String interview_content_basic; // 面接内容基本
	private String interview_content_additional; // 面接内容その他
	private String interview_memo; // メモ


    public InterviewDTO(int interview_id, int company_id, String interview_date, String interviewer_name, String interview_content_basic, String interview_content_additional, String interview_memo) {
        this.interview_id = interview_id;
        this.company_id = company_id;
        this.interview_date = interview_date;
        this.interviewer_name = interviewer_name;
        this.interview_content_basic = interview_content_basic;
        this.interview_content_additional = interview_content_additional;
        this.interview_memo = interview_memo;
    }


    // GetterとSetter
	public int getInterview_id() {
		return interview_id;
	}


	public void setInterview_id(int interview_id) {
		this.interview_id = interview_id;
	}


	public int getCompany_id() {
		return company_id;
	}


	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}


	public String getInterview_date() {
		return interview_date;
	}


	public void setInterview_date(String interview_date) {
		this.interview_date = interview_date;
	}


	public String getInterviewer_name() {
		return interviewer_name;
	}


	public void setInterviewer_name(String interviewer_name) {
		this.interviewer_name = interviewer_name;
	}


	public String getInterview_content_basic() {
		return interview_content_basic;
	}


	public void setInterview_content_basic(String interview_content_basic) {
		this.interview_content_basic = interview_content_basic;
	}


	public String getInterview_content_additional() {
		return interview_content_additional;
	}


	public void setInterview_content_additional(String interview_content_additional) {
		this.interview_content_additional = interview_content_additional;
	}


	public String getInterview_memo() {
		return interview_memo;
	}


	public void setInterview_memo(String interview_memo) {
		this.interview_memo = interview_memo;
	}


}
