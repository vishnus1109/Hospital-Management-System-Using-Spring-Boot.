<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Admin Details</title>
    <link rel="icon" href="image/titlelogo.png">
    <style>
        body {
            background-color: #121212; /* Dark background */
            color: #ffffff; /* Light text */
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 150vh;
            margin: 0;
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
        .form {
            background-color: #1e1e1e; /* Slightly lighter dark background for the form */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 300px;
        }
        input[type="email"], input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #333;
            border-radius: 5px;
            background-color: #333; /* Dark input background */
            color: #fff; /* Light text */
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007BFF; /* Blue button */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        .form-label {
            display: block;
            margin-bottom: 5px;
        }
        .message {
            text-align: center;
            margin: 10px 0;
        }
        .message.error {
            color: red;
        }
        .message.success {
           color: green;
        }
    </style>
</head>
<body>
	<div class="watermark">BeeVISH</div>

    <form action="updateadmindetails" method="post" class="form">
        <label class="form-label">Email:</label>
        <input type="hidden" name="email" value="${admins.email}"/><br><br>
        
        <label class="form-label">Name:</label>
        <input type="text" name="name" value="${admins.name}"/><br><br>
        
        <label class="form-label">Mobile:</label>
        <input type="text" name="mobilenumber" value="${admins.mobilenumber}"/><br><br>
        
        <label class="form-label">Password:</label>
        <input type="hidden" name="password" value="${admins.password}"><br><br>
        
        <label class="form-label">Department:</label>
        <select name="department" required>
            <option value="">${admins.department}</option>
            <option value="emergency">Emergency</option>
            <option value="surgery">Surgery</option>
            <option value="ICU">ICU</option>
            <option value="cardiology">Cardiology</option>
            <option value="neurology">Neurology</option>
            <option value="psychiatry">Psychiatry</option>
            <option value="radiology">Radiology</option>
            <option value="laboratory">Laboratory</option>
            <option value="rehabilitation">Rehabilitation</option>
            <option value="ENT">ENT</option>
            <option value="geriatric">Geriatric</option>
            <option value="pregnancy">Pregnancy</option>
        </select><br><br>
        
        <label class="form-label">Experience:</label>
        <select name="experience" required>
            <option value="">${admins.experience}</option>
            <option value="1year">1 year</option>
            <option value="2years">2 years</option>
            <option value="3years">3 years</option>
            <option value="4years">4 years</option>
            <option value="5years above">5 years above</option>
        </select><br><br>
        
        <label class="form-label">Category:</label>
        <select name="category" required>
            <option value="">${admins.category}</option>
            <option value="gents">Gents</option>
            <option value="ladies">Ladies</option>
            <option value="children">Children</option>
        </select><br><br>
        
        <label class="form-label">Shift:</label>
        <select name="shift" value="${admins.shift}" required>
            <option value="A">A</option>
            <option value="B">B</option>
            <option value="C">C</option>
        </select><br><br>
        
        <label class="form-label">User Type:</label>
        <select name="usertype" required>
            <option value="">Select User</option>
            <option value="Admin">Admin</option>
            <option value="Doctor">Doctor</option>
        </select><br><br>
        
        <input type="submit" value="Update Details Here"/>
    </form>
</body>
</html>
