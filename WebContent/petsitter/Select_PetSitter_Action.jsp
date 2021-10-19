<!-- 
	2021/10/13 유주용 Action 첫구성

 -->

<%@page import="dto.PetsitterDto"%>
<%@page import="dao.PetsitterDao"%>
<%@page import="dto.GalleryDto"%>
<%@page import="dao.GalleryDao"%>
<%@page import="dto.AdopttimeDto"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String address = request.getParameter("address");
	String wdate_start = request.getParameter("wdate_start");
	String wdate_final = request.getParameter("wdate_final");
	String owner = Arrays.toString(request.getParameterValues("owner"));
	owner = owner.substring(1, owner.length()-1);
	
	int pageNo;
	if(request.getParameter("page")==null) pageNo=1;
	else pageNo = Integer.parseInt(request.getParameter("page")); 
	int pageSize =3;
	//PageDto pageDto = new PageDto(pageNo,dao.getCount(),pageSize);
	
	
	AdopttimeDto adopt = new AdopttimeDto(address,wdate_start,wdate_final,owner);
	
	PetsitterDao cdao = PetsitterDao.getInstance();
	List<PetsitterDto> cmts = cdao.select(adopt);
	/*
	GalleryDao gdao = GalleryDao.getInstance();
	for(PetsitterDto s : cmts){
	int pet_idx = s.getIdx();
	List<GalleryDto> list = gdao.getList(pet_idx);
	request.setAttribute("glist",list);
	} */
	request.setAttribute("cmtlist",cmts);
	pageContext.forward("home_View.jsp"); 
%>
   
