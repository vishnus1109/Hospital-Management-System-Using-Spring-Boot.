<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<style>
        body {
            background-color: #f0f8ff; /* Light blue background */
            color: #333;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
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
            background-color: #ffffff; /* White background for the form */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 280px;
        }
        h2 {
            color: #007BFF; /* Blue for the heading */
            text-align: center;
        }
        input[type="email"], input[type="text"], input[type="password"], select {
            width: 100%;
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
    </style>

<body>
	<div class="watermark">BeeVISH</div>

    <div align="center">
        <h3>Enter Patient's Details</h3>
        <button><a href="addpatients">Register</a></button><br>
        <hr>
        <button><a href="oplist">View OP's Data</a></button>
    </div>
</body>
</html>
