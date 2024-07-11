package service;

import java.util.List;

import dao.InterviewDAO;
import dto.InterviewDTO;

public class FindInterviewService {
    public List<InterviewDTO> execute(InterviewDTO findInterview){
        InterviewDAO dao = new InterviewDAO();
        List<InterviewDTO> interviews = dao.findByInterview(findInterview);
        return interviews;
    }
    
}
