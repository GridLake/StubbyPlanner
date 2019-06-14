package stbplanner.general.command;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import stbplanner.general.dto.RegisterDTO;
import stbplanner.general.service.RegisterService;

public class RegisterHandler implements CommandHandler{
	private static final String FORM_VIEW = "/common/register";
	private RegisterService registerService = new RegisterService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if( request.getMethod().equalsIgnoreCase("GET") ) {
			return processForm(request, response);
		}else if( request.getMethod().equalsIgnoreCase("POST") ) {
			System.out.println("posttttttttttttttttttttttt");
			return processSubmit(request, response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processSubmit(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		
		String saveDirectory = request.getRealPath("/square/gallery");
		System.out.println(saveDirectory);
		// days23/upload 폴더 생성이 안되어 있으면 생성
		File saveDir = new File(saveDirectory);
		if (!saveDir.exists())saveDir.mkdirs();

		int maxPostSize = 1024 * 1024 * 5; // 5MB  단위 byte
		String encoding = "UTF-8";
		FileRenamePolicy policy = new DefaultFileRenamePolicy();

		try {
			MultipartRequest mrequest = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, policy);
		
			Enumeration en = mrequest.getFileNames();
		String filename = (String) en.nextElement();
		String filesystemName = mrequest.getFilesystemName(filename);
		System.out.println(filename);
		System.out.println(filesystemName);
		
		RegisterDTO dto = new RegisterDTO();
		System.out.println("registerhandler");
		dto.setName(mrequest.getParameter("name"));
		dto.setMember_id(mrequest.getParameter("member_id"));
		dto.setPassword(mrequest.getParameter("password"));
//		dto.setProfile_pic(request.getParameter("profile_pic"));
		dto.setProfile_pic(filesystemName);
		dto.setPassword_confirm(mrequest.getParameter("password_confirm"));
		dto.setMember_email(mrequest.getParameter("member_email"));
		dto.setVemail(mrequest.getParameter("vemail"));
		dto.setGender(mrequest.getParameter("gender"));
		dto.setBirth_year(mrequest.getParameter("birth_year"));
		dto.setBirth_month(mrequest.getParameter("birth_month"));
		dto.setAccept_mail(mrequest.getParameter("accept_mail"));
		
		System.out.println(dto.getName());
		System.out.println(dto.getMember_email());
		System.out.println(dto.getMember_id());
		System.out.println(dto.getPassword());
		System.out.println(dto.getProfile_pic());
		System.out.println(dto.getPassword_confirm());
		System.out.println(dto.getVemail());
		System.out.println(dto.getGender());
		System.out.println(dto.getBirth_month());
		System.out.println(dto.getBirth_year());
		System.out.println(dto.getAccept_mail());
		
		registerService.register(dto);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "/common/index"; 
	}
	private String processForm(HttpServletRequest request, HttpServletResponse response) {		 
		return FORM_VIEW;
	}
	
}
