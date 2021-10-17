<!-- 
	2021/10/13 유주용 Action 첫구성

 -->


<%@page import="dto.Gallery"%>
<%@page import="dao.GalleryDao"%>
<%@page import="dto.AdopttimeDto"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="dto.AddressDto"%>
<%@page import="dao.AddressDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String address = request.getParameter("address");
	String wdate_start = request.getParameter("wdate_start");
	String wdate_final = request.getParameter("wdate_final");
	String owner = Arrays.toString(request.getParameterValues("owner"));
	owner = owner.substring(1, owner.length()-1);

	AdopttimeDto adopt = new AdopttimeDto(address,wdate_start,wdate_final,owner);
	
	AddressDao cdao = AddressDao.getInstance();	
	List<AddressDto> cmts = cdao.select(adopt);
	
	GalleryDao gdao = GalleryDao.getInstance();

	for(AddressDto s : cmts){
	int pet_idx = s.getIdx();
	List<Gallery> list = gdao.getList(pet_idx);
	request.setAttribute("glist",list);
	}
	request.setAttribute("cmtlist",cmts);
	pageContext.forward("home_View.jsp");
 	
%>
   
