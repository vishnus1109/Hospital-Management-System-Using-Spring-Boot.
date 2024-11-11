<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>ADD-Admin/Doctors</title>
    <link rel="icon" href="image/titlelogo.png">
    <style>
        body {
            background-color: #f0f8ff; /* Light blue background */
            color: #333;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 140vh;
            margin: 0;
        }
        .form {
            background-color: #ffffff; /* White background for the form */
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 280px;
        }
        h2 {
            color: #007BFF; /* Blue for the heading */
            text-align: center;
        }
        input[type="email"], input[type="text"], input[type="password"], select {
            width: 90%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
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
	<div class="watermark">BeeVISH</div>

    <form action="addadmin" method="post" class="form">
        <h2>ADD-Admin/Doctors</h2>
        <label class="form-label">Email:</label>
        <input type="email" name="email" required><br>
        
        <!-- Display error messages -->
        <c:if test="${not empty errorMessage}">
            <div class="message error">${errorMessage}</div>
        </c:if>

        <!-- Display success messages -->
        <c:if test="${not empty successMessage}">
            <div class="message success">${successMessage}</div>
        </c:if>

        <label class="form-label">Name:</label>
        <input type="text" name="name"><br>
        
        <label class="form-label">Mobile Number:</label>
        <input type="text" name="mobilenumber" required pattern="[0-9]{10}"><br>
        
        <label class="form-label">Password:</label>
        <input type="password" name="password" required><br>
        
        <label class="form-label">Department:</label>
        <select name="department" required>
            <option value="">Select Department</option>
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
        </select><br>
        
        <label class="form-label">Experience:</label>
        <select name="experience" required>
            <option value="">Select Experience</option>
            <option value="1year">1 year</option>
            <option value="2years">2 years</option>
            <option value="3years">3 years</option>
            <option value="4years">4 years</option>
            <option value="5years above">5 years above</option>
        </select><br>
        
        <label class="form-label">Category:</label>
        <select name="category" required>
            <option value="">Select Category</option>
            <option value="gents">Gents</option>
            <option value="ladies">Ladies</option>
            <option value="children">Children</option>
        </select><br>
        
        <label class="form-label">Shift:</label>
        <select name="shift" required>
            <option value="">Select Shift</option>
            <option value="A">A</option>
            <option value="B">B</option>
            <option value="C">C</option>
        </select><br>
        
        <label class="form-label">User Type:</label>
        <select name="usertype" required>
            <option value="">Select User</option>
            <option value="Admin">Admin</option>
            <option value="Doctor">Doctor</option>
        </select><br><br>
        
        <input type="submit" value="Log Here">
    </form>
</body>
</html>
