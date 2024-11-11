<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Search Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f7fa; /* Light blue background */
            color: #007bb5; /* Dark blue text */
            text-align: center;
        }

        h2 {
            color: #007bb5;
        }

        .entity {
            background-color: #ffffff;
            border: 1px solid #007bb5;
            border-radius: 5px;
            padding: 10px;
            margin: 10px auto;
            width: 50%;
            text-align: left;
        }

        p.error {
            color: red;
        }
		input{
			width:220px;
			height:35px;
			background:transparent;
			border-bottom:1px solid blue;
			border-top:1px solid blue;
			border-left:1px solid blue;
			border-right:1px solid blue;
			color:black;
			font-size:15px;
			letter-spacing:1px;
			margin-top:15px;
			font-family:sans-serif;
			}
			input:focus{
				outline:none;
			}
			.watermark {
							            position: fixed;
							            top: 50%;
							            left: 50%;
							            transform: translate(-50%, -50%);
							          
							            color: rgba(0, 0, 0, 0.1); 
							            z-index: -1; 
							            pointer-events: none; 
							            user-select: none; 
										
										font-family: algerian;
										 font-size: 80px
							        }
    </style>
</head>
<body>
    <h2>Search Results</h2>
	<div class="watermark">BeeVISH</div>

    <c:if test="${not empty entities}">
        <c:forEach items="${entities}" var="entity">
            <div class="entity">
                <p>Name: ${entity.name}</p>
                <p>Age: ${entity.age}</p>
                <p>Gender: ${entity.gender}</p>
                <p>Issue: ${entity.issue}</p>
                <p>Blood Group: ${entity.bloodgroup}</p>
            </div>
        </c:forEach>
    </c:if>

    <c:if test="${not empty errorMessage}">
        <p class="error">${errorMessage}</p>
    </c:if>
	<form action="search" method="post">
	        <input type="text" name="search">
	        <input type="submit" value="search">
	    </form> 
</body>
</html>
