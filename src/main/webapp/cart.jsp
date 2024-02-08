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
	
	<title>Cart</title>
	 <!-- FONT AWSOME LINK  -->
  	<script src="https://kit.fontawesome.com/789c569d32.js" crossorigin="anonymous"></script>


  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	
</head>
<body>

  <%@include file="header.jsp"%>

  
  
<br>
  <div class="container mx-auto">
    <h2 class="text-center py-3 text-primary">Test List & Book Appointment</h2>
    <div class="row">
      <div class="col">
        <table class="table border">
          <thead>
            <tr>
              <th scope="col">S.NO.</th>
              <th scope="col">Test Name</th>
              <th scope="col">Price</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${car}" var="pro" varStatus="loop">
            <tr>
              <th scope="row">${loop.index + 1}</th>
              <td>${pro.alltest.name} </td>
              <td>${pro.alltest.price}</td>
              <c:set var="total" value="${total+pro.alltest.price }"/>
              <c:set var="pn" value="${pn}, ${pro.alltest.name}"/>
              <c:set var="pi" value="${pi},${pro.alltest.id}"/>
			  <c:set var="cid" value="${cid},${pro.id}"/>
			  <td>
			  <a href="remove?id=${pro.id}">
			   REMOVE ITEM
			  </a>
			  </td>
            </tr>
            
            </c:forEach>
            
           
          </tbody>
        </table>
      </div>

	      <div class="col secondcol" >
	        <div class="secondcolfirstsection">
	          <h4>Logged in</h4>
	          <h4>${register.name} | ${register.email}</h4>
	        </div>
<br>
        <div class="secondcolsecondsection">
          <h4>20% off on using Coupon Code save20</h4>
          <h4>Extra 50% off on Senior Citizen  </h4>
        </div>
      </div>
    </div>
  </div>

<div class="text-center info">

<a href="complete?email=<%=email%>&pi=${pi}&pn=${pn}&total=${total}&cid=${cid}" >

<button type="submit" class="text-center px-5 m-3">Book Appointment & pay</button>
</a>
</div>          
<jsp:include page= "footer.jsp"/>