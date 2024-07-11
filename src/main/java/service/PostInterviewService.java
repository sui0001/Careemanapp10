package service;

import dao.InterviewDAO;
import dto.InterviewDTO;

public class PostInterviewService {
    public String execute(InterviewDTO newInterview) {
        InterviewDAO dao = new InterviewDAO();
        String msg = dao.createInterview(newInterview);
        return msg;
    }
}
