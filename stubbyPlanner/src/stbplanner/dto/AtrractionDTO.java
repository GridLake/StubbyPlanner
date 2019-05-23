package stbplanner.dto;

public class AtrractionDTO {
	
	//fields
	// 여행지 - 여행지좌표, 도시좌표 추가 해야한다.
	private int attr_id;	// 여행지 id
	private String attr_name;	// 여행지명
	// 나라
	private int country_id;	// 나라 id
	private String country_name; // 나라명
	// 도시
	private int city_id;		// 도시 id
	private String city_name; // 도시명
	// 지역
	private int region_id;	// 지역 id
	private String region_name; // 지역명
	// 테마 
	private int theme_id; // 테마 id
	private String theme_name; // 테마명
	
	// 여행지 상세정보 - 이미지경로추가?
	private String title; // 소제목
	private String content; // 상세설명
	private int favorite; // 즐겨찾기 -- defalut 0 줘야할듯.
	
	// 여행지 주변관광정보 
	private int nearSight_id; // 여행지주변관광번호
	private String subject; // 주제
	
	// 여행지 주변관광정보 상세 - 이미지경로추가?
	private int nearSightDet_id; // 여행지관련정보번호
	private String n_title; // 소제목 -- 임의수정
	private String info; // 여행지주변관광정보
	
	// 여행지 리뷰작성 - 리뷰사진 추가.
	private int review_id; // 리뷰번호
	private String member_id; // 회원ID -- 임의수정
	private String r_content; // 리뷰내용
	private int rating; // 리뷰별점
	
	// 버킷리스트
	private int bucketcity_id; // 버킷번호  
	private String bucketcity_name; // 도시명
	
	
}
