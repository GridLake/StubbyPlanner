<%@page import="java.util.Enumeration"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String saveDirectory = pageContext.getServletContext().getRealPath("/square/gallery");
	System.out.println(saveDirectory);
	// days23/upload 폴더 생성이 안되어 있으면 생성
	File saveDir = new File(saveDirectory);
	if (!saveDir.exists())
		saveDir.mkdirs();

	int maxPostSize = 1024 * 1024 * 5; // 5MB  단위 byte
	String encoding = "UTF-8";
	FileRenamePolicy policy = new DefaultFileRenamePolicy();

	// *****
	// 객체 생성될 때 생성자의 파라미터값으로 예외 발생하지 않으면
	// 자동 파일 업로드 성공....
	MultipartRequest mrequest = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, policy);

	String member_id = request.getParameter("member_id");
		String subject = mrequest.getParameter("subject");
		System.out.println(mrequest);
		System.out.println(member_id);

	Connection conn = null;

	PreparedStatement pstmtWriteGallery = null;
	PreparedStatement pstmtGalleryPic = null;
	JSONObject jObj = null;

	
	try {
	 	System.out.println("try");

		conn = ConnectionProvider.getConnection();
// 		insert into tbl_gallery values((select nvl(max(gal_seq),0)+1 from tbl_gallery),?,sysdate,0,?)
		String sqlWriteGallery = "insert into tbl_gallery values((select nvl(max(gal_seq),0)+1 from tbl_gallery),?,sysdate,0,0,?)";

		pstmtWriteGallery =conn.prepareStatement(sqlWriteGallery);
	 			
		pstmtWriteGallery.setString(1, member_id);
		pstmtWriteGallery.setString(2, subject);		
	 
		int rsWriteGallery = pstmtWriteGallery.executeUpdate();	
	 		System.out.println(rsWriteGallery);
		if(rsWriteGallery !=0){
	 		System.out.println("if");
			jObj = new JSONObject();
			jObj.put("listWriteGallery", rsWriteGallery);
		}else{
	 		System.out.println("else");
			jObj = new JSONObject();
			jObj.put("listWriteGallery", rsWriteGallery);
		}

	} catch (Exception e) {
		e.printStackTrace();
	} 
	
	
	
	Enumeration en = mrequest.getFileNames(); // getFileNames()
	
	while (en.hasMoreElements()) {
		System.out.println("while");

		conn = null;
		pstmtWriteGallery = null;
		pstmtGalleryPic = null;
		jObj = null;

		String fileName = (String) en.nextElement();
		System.out.println(fileName);
		File uploadFile = mrequest.getFile(fileName); // getFile()
		long uploadFile_length = uploadFile.length();
		String originalFileName = mrequest.getOriginalFileName(fileName);
		String filesystemName = mrequest.getFilesystemName(fileName);

		//  			    File picture = mrequest.getFile("picture");  // filename=upload
		//  			    long uploadFile_length = picture.length(); 
		//  			    String originalFileName = mrequest.getOriginalFileName("picture");
		//  			    String filesystemName  = mrequest.getFilesystemName("picture");
		System.out.println("ajaxPage호출 writeGallery" + saveDirectory);
		System.out.println("ajaxPage호출 writeGallery" + uploadFile);

		System.out.println("ajaxPage호출 writeGallery" + originalFileName);
		System.out.println("ajaxPage호출 writeGallery" + filesystemName);
		System.out.println("ajaxPage호출 writeGallery" + member_id);

		
			try {
			 	System.out.println("try");
		
				conn = ConnectionProvider.getConnection();
		// 		insert into tbl_gallery values((select nvl(max(gal_seq),0)+1 from tbl_gallery),?,sysdate,0,?)
// 				String sqlWriteGallery = "insert into tbl_gallery values((select nvl(max(gal_seq),0)+1 from tbl_gallery),?,sysdate,0,?)";
				String sqlGalleryPic = "insert into tbl_gallery_pic values((select nvl(max(gal_pic_seq),0)+1 from tbl_gallery_pic),(select nvl(max(gal_seq),0) from tbl_gallery),?,sysdate)";
		
// 				pstmtWriteGallery =conn.prepareStatement(sqlWriteGallery);
				pstmtGalleryPic =conn.prepareStatement(sqlGalleryPic);
			 			
// 				pstmtWriteGallery.setString(1, member_id);
// 				pstmtWriteGallery.setString(2, subject);
			 			
				pstmtGalleryPic.setString(1,filesystemName);
				
			 	System.out.println("pstmtWriteParty");
			 
// 				int rsWriteGallery = pstmtWriteGallery.executeUpdate();	
				int rsGalleryPic = pstmtGalleryPic.executeUpdate();	
			 		System.out.println(rsGalleryPic);
				if(rsGalleryPic !=0){
			 		System.out.println("if");
					jObj = new JSONObject();
					jObj.put("listGalleryPic", rsGalleryPic);
				}else{
			 		System.out.println("else");
					jObj = new JSONObject();
					jObj.put("listGalleryPic", rsGalleryPic);
				}
		
			} catch (Exception e) {
				e.printStackTrace();
			} 
		
	}
%>

<%=jObj%>