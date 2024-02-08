<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style.css">
  	<link rel="stylesheet" href="login.css">
	
	<title>All Test</title>
	 <!-- FONT AWSOME LINK  -->
  	<script src="https://kit.fontawesome.com/789c569d32.js" crossorigin="anonymous"></script>


  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	
</head>
<body>

  <%@include file="header.jsp"%>

  
<div class="section2"  >

        <div class="container">
    <c:forEach items="${obj}" var="prod">
            <div class="items">
                <div class="img img1">
                    <a href="singlepage?id=${prod.id}">
                        <img src="images/${prod.imageUrl}" alt="">
                    </a>
                </div>
                <div class="name"> ${prod.name}</div>
                <div class="price">Price : ${prod.price}</div>
                <div class="info ">
                <a href="addcart?id=${prod.id}&email=<%=email%>"> 
                <button>Add to cart </button>
                </a>
                 &nbsp;
                 
                
                <a href="singlepage?id=${prod.id}">
                <button>  Read more </button>
                </a>
                
                </div>
            </div>
    </c:forEach>
        </div>
        
    </div>


  <jsp:include page= "footer.jsp"/>