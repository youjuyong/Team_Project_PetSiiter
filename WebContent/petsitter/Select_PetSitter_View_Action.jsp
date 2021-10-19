<!-- 
	2021/10/18 유주용 Action 첫구성

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
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	PetsitterDao cdao = PetsitterDao.getInstance();
	PetsitterDto pets_personal = cdao.selectOne(idx);
	/*
	GalleryDao gdao = GalleryDao.getInstance();
	List<GalleryDto> pet_personal_gallery = gdao.getList(idx);

 	request.setAttribute("pets_gall_list",pet_personal_gallery);
	*/
	request.setAttribute("pets_list",pets_personal);
	
	pageContext.forward("Select_PetSitter_View.jsp");    
%>
   
