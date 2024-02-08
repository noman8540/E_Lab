<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style.css">
	
	<title>Admin Home</title>
	 <!-- FONT AWSOME LINK  -->
  	<script src="https://kit.fontawesome.com/789c569d32.js" crossorigin="anonymous"></script>


  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	
</head>
<body>

  <%@include file="headeradmin.jsp"%>

  <div class="container">

    <div class="section1">
      <div class="img-slider">
        <img src="images/img1.jpg" alt="" class="img">
        <img src="images/img2.jpg" alt="" class="img">
        <img src="images/img3.jpg" alt="" class="img">
        <img src="images/img4.jpg" alt="" class="img">
        <img src="images/img5.jpg" alt="" class="img">
        <img src="images/img6.jpg" alt="" class="img">
      </div>

    </div>

    <div class="section2">

      <h3 class="heading1">Visit the Diagnostic Test</h3>



      <div class="container">
        
        <c:forEach items="${obj}" var="prod" varStatus="loop">
        <c:if test="${loop.index < 4}">
        <div class="items">
        
          <div class="img img1"><img src="images/${prod.imageUrl}" alt=""></div>
          <div class="name">${prod.name}</div>
          
          <div class="price">${prod.price}</div>
          <div class="info ">
            
            <a href="update?id=${prod.id}&email=<%=email%>"> 
                <button>Update </button>
                </a>
            
            
            <a href="delete?id=${prod.id}">
                <button>  Delete </button>
            </a>
          </div>
        </div>
        </c:if>
        </c:forEach>
        
        

      </div>

    </div>

  </div>

  <jsp:include page= "footeradmin.jsp"/>