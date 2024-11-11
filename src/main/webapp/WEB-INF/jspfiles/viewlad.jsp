<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f7fa; /* Light blue background */
            color: #007bb5; /* Dark blue text */
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px auto;
        }

        table, th, td {
            border: 1px solid #007bb5; /* Dark blue border */
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #007bb5; /* Dark blue header */
            color: white;			position: sticky;
			            top: 0;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light grey for even rows */
        }
    </style>
</head>
<body>
	<div class="watermark">BeeVISH</div>

    <div align="center">
        <table>
            <tr>
                <th>Name</th>
                <th>AadhaarNumber</th>
                <th>Age</th>
                <th>DateOfBirth</th>
                <th>BloodGroup</th>
                <th>MobileNumber</th>
                <th>Problem</th>
                <th>Address</th>
                <th>Gaurdian</th>
                <th>AdmitIn</th>
                <th>AdmitOn</th>
                <th>DischargeOn</th>
            </tr>
            <c:forEach items="${lad}" var="l">    
                <tr>
                    <td>${l.name}</td>
                    <td>${l.aadhaarnumber}</td>
                    <td>${l.age}</td>
                    <td>${l.dateofbirth}</td>
                    <td>${l.bloodgroup}</td>
                    <td>${l.mobilenumber}</td>
                    <td>${l.problem}</td>
                    <td>${l.address}</td>
                    <td>${l.gaurdian}</td>
                    <td>${l.admitin}</td>
                    <td>${l.admiton}</td>
                    <td>${l.dischargeon}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
