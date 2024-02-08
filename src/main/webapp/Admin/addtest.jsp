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
	
	<title>Admin All test</title>
	 <!-- FONT AWSOME LINK  -->
  	<script src="https://kit.fontawesome.com/789c569d32.js" crossorigin="anonymous"></script>


  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	
</head>
<body>

  <%@include file="headeradmin.jsp"%>



<form action="additems" method="get" class="mx-auto w-75 abc" >
  <div class="mb-3">
    <label for="exampleInputName" class="form-label mx-3 ab">Name</label>
    <input type="Product name" name="name" class="form-control w-75 mx-3" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    
    
    <div class="mb-3">
    <label for="exampleInputDescription" class="form-label mx-3 ab">Description</label>
    <input type="Description" name="description" class="form-control w-75 mx-3" id="exampleInputDescription" aria-describedby="emailHelp">
    </div>
    
    <div class="mb-3">
    <label for="exampleInputImage" class="form-label mx-3 ab">Image Url</label>
    <input type="text" name="imageUrl" class="form-control w-75 mx-3" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    
    <div class="mb-3">
    <label for="exampleInputImage" class="form-label mx-3 ab">Price</label>
    <input type="number" name="price" class="form-control w-75 mx-3" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    
  
  
  <button type="submit" class="btn btn-primary mx-3 ab mb-3">Submit</button>
  
</form>


<jsp:include page= "footeradmin.jsp"/> 
