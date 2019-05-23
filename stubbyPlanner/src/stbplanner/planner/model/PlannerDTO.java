package stbplanner.planner.model;

import java.util.Date;

public class PlannerDTO {
	
	// 플래너
	private int planner_id; // 플래너 seq
	private String member_id; // 회원아이디
	private String tripType; // 여행타입
	private Date deptDate; // 출국일
	private int p_days; // 여행일수
	
	// 루트계획
	private int r_days; // 일수
	private String trans; // 교통수단
	private Date lastDate; // 여행지마지막날짜
	private int attr_id; // 도착여행지번호
	private int attr_id2; // 출발여행지 번호
	
	// 버킷리스트2
	private int planner_bucket_id; // 버킷리스트번호
//	private int attr_id; //여행지 번호
	
	// 일정
	private int schedule_id; // 일정seq
	private String s_content; // 일정상세내용
	private Date time; // 시작시간
	private Date date; // 여행날짜
	
	//숙소예약정보
	private String a_type; // 숙소타입
	private String a_name; // 숙소이름
	private int a_price; //금액
	
	
}
