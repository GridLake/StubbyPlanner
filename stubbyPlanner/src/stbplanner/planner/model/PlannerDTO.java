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
	private int rt_id; // 루트번호 seq
	private int rt_days; // 일수
	private String rt_trans; // 교통수단
	private Date lastDate; // 여행지마지막날짜
	private int dept_attr_id; // 도착여행지번호
	private int arr_attr_id2; // 출발여행지 번호
	
	// 버킷리스트2
	private int planner_bucket_id; // 버킷리스트번호
//	private int attr_id; //여행지 번호
	
	// 일정
	private int schedule_id; // 일정seq
	private String s_content; // 일정상세내용
	private Date s_time; // 시작시간
	private Date s_date; // 여행날짜
	
	// 숙소예약정보 - 숙소위치 X
	private String a_type; // 숙소타입
	private String a_name; // 숙소이름
	private int a_price; //금액
	private String a_reserver; // 예약자명
	private Date a_checkout; // 체크아웃
	private String a_room_type; // 방종류
	private int a_room_cnt; // 갯수
	private String a_address; //주소
	private String a_tel; // 연락처
	private String a_url; // 예약사이트
	private String a_memo; // 메모
	
	// 교통예약정보
	private String tr_trans; // 교통수단
	private int tr_price; // 금액
	private String tr_deptCity; // 출발지
	private Date tr_deptTime; // 출발시간
	private String tr_arrCity; // 도착지
	private Date tr_arrTime; // 도착시간
	private String tr_company; // 운송회사명
	private String tr_url; // 예약웹사이트
	private String tr_memo; // 메모
	
	// 투어예약정보 - 위치좌표 X
	private String t_type; // 투어,티켓분류
	private String t_name; // 투어,티켓이름
	private Double t_price; // 금액
	private Date t_date; // 해당날짜
	private String t_reserver; // 예약자명
 	private int t_people; // 인원
	private String t_company; // 회사명
	private Date t_time; // 모임시각
	private String t_tel; // 연락처
	private String t_url; // 예약사이트
	
	// 유레일패스예약정보
	private String u_planner_id;
	private Double u_passType;
	private int u_price;
	private int u_days;
	private int u_months;
	private String u_class;
	private String u_type;
	private Date u_startDate;
	private Date u_endDate;
	private String u_company;
	private String u_url;
	
	// 항공권예약정보
	private String airline;
	private String content;
	private String country_name;
	private String city_name;
	private String dept_sAirport;
	private Date dept_sDate;
	private Date dept_sTime;
	private String dept_aAirport;
	private Date dept_aDate;
	private Date dept_aTime;
	private String arr_sAirport;
	private Date arr_sDate;
	private Date arr_sTime;
	private String arr_eAirport;
	private Date arr_eDate;
	private Date arr_eTime;
	private String ar_company;
	private String ar_url;
	private String ar_memo;
	
	
}
