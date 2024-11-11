<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f7fa; /* Light blue background */
            color: #007bb5; /* Dark blue text */
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            border: 1px solid #007bb5; /* Dark blue border */
        }

        th, td {
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
        div {
            margin: 20px;
        }
		
    </style>
</head>
<body>
	<div class="watermark">BeeVISH</div>

    <div align="center">
        <table>
            <tr>
                <th>Name</th>
                <th>Age</th>
                <th>DateOfBirth</th>
                <th>BloodGroup</th>
                <th>MobileNumber</th>
                <th>Address</th>
                <th>Father</th>
                <th>Mother</th>
                <th>AadhaarNumber</th>
                <th>Problem</th>
                <th>AdmitIn</th>
                <th>AdmitOn</th>
                <th>DischargeOn</th>
            </tr>
            <c:forEach items="${child}" var="c">    
                <tr>
                    <td>${c.name}</td>
                    <td>${c.age}</td>
                    <td>${c.dateofbirth}</td>
                    <td>${c.bloodgroup}</td>
                    <td>${c.mobilenumber}</td>
                    <td>${c.address}</td>
                    <td>${c.father}</td>
                    <td>${c.mother}</td>
                    <td>${c.aadhaarnumber}</td>
                    <td>${c.problem}</td>
                    <td>${c.admitin}</td>
                    <td>${c.admiton}</td>
                    <td>${c.dischargeon}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
