<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Search Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f7fa; /* Light blue background */
            color: #007bb5; /* Dark blue text */
        }
        
        form {
            margin: 20px auto;
            background-color: #ffffff; /* White form background */
            padding: 20px;
            border: 1px solid #007bb5; /* Dark blue border */
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 123, 181, 0.5); /* Blue shadow */
        }
        
        input[type="text"],
        input[type="submit"] {
            width: 20%;
            padding: 10px;
            margin: 5px 0 15px 0;
            display: inline-block;
            border: 1px solid #007bb5; /* Dark blue border */
            border-radius: 5px;
            box-sizing: border-box;
        }
        
        input[type="submit"] {
            background-color: #007bb5; /* Dark blue button */
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #005f86; /* Darker blue on hover */
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        table, th, td {
            border: 1px solid #007bb5; /* Dark blue border */
            padding: 10px;
            text-align: left;
        }
        
        th {
            background-color: #007bb5; /* Dark blue header */
            color: white; 			position: sticky;
			            top: 0;
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
    <form action="search" method="post">
        Search:<input type="text" name="search">
        <input type="submit" value="submit">
    </form>  
	<div class="watermark">BeeVISH</div>

    <table border="1">
        <tr>
            <th>Name</th>
            <th>Gender</th>
            <th>Age</th>
            <th>DateOfBirth</th>
            <th>BloodGroup</th>
            <th>MobileNumber</th>
            <th>Issue</th>
            <th>Date</th>
        </tr>
        <c:forEach items="${ops}" var="o">  
            <tr>
                <td>${o.name}</td>
                <td>${o.gender}</td>
                <td>${o.age}</td>
                <td>${o.dateofbirth}</td>
                <td>${o.bloodgroup}</td>
                <td>${o.mobilenumber}</td>
                <td>${o.issue}</td>
                <td>${o.todaydate}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
