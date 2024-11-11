<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Records</title>
    <link rel="icon" href="image/titlelogo.png">
    <style>
        body {
            background-color: #f0f8ff; /* Light blue background */
            color: #333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        h3 {
            color: #0056b3; /* Dark blue for the marquee text */
        }
        h5 {
            color: #007BFF; /* Blue for the heading */
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff; /* White background for the table */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #e0f7fa;			position: sticky;
			            top: 0; /* Light cyan for table headers */
        }
        tr:nth-child(even) {
            background-color: #f9f9f9; /* Light gray for even rows */
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
        a {
            color: #007BFF;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        button {
            background-color: #007BFF; /* Blue button */
            color: white;
            padding: 10px 20px;
            margin: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button a {
            color: white;
            text-decoration: none;
        }
        button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        button:active {
            background-color: #003f7f; /* Even darker blue on click */
        }
    </style>
</head>
<body>
	<div class="watermark">BeeVISH</div>

    <h3><marquee>Admin Records</marquee></h3>
    <div align="center">
        <h5>New Admin/Doctor - Please Register Here</h5>
        <button><a href="adminlogin">ADMIN-REGISTER</a></button><br><br>
        <table border="1">
            <tr>
                <th>Mail</th>
                <th>Name</th>
                <th>Department</th>
                <th>Admin/Doctor</th>
                <th>Experience</th>
                <th>Shift</th>
                <th>Mobile Number</th>
                <th>Category</th>
                <th>Actions</th>
            </tr>
            <c:forEach items="${admins}" var="a">
                <tr>
                    <td>${a.email}</td>
                    <td>${a.name}</td>
                    <td>${a.department}</td>
                    <td>${a.usertype}</td>
                    <td>${a.experience}</td>
                    <td>${a.shift}</td>
                    <td>${a.mobilenumber}</td>
                    <td>${a.category}</td>
                    <td>
                        <a href="updateadmin?email=${a.email}">Update</a> |
                        <a href="deleteadmin?email=${a.email}">Remove</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
