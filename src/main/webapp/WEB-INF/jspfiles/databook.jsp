<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Your Page Title</title>
    <link rel="icon" href="image/titlelogo.png">
    <style>
        body {
            background-color: #ADD8E6; /* Light blue background */
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
        div {
            text-align: center;
        }
        button {
            background-color: transparent;
            color: #333;
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
<body><body style="background-image: url('image/hospitaldata.jpg'); background-size: cover; background-repeat: no-repeat; text-align:center">
	<div class="watermark">BeeVISH</div>

    <div>
        <button><a href="outpatient">OutPatient</a></button><br><br>
        <button><a href="inpatient">InPatient</a></button><br><br>
        <button><a href="nursedetail">Nurse</a></button><br><br>
        <button><a href="viewadmin">Admins</a></button><br><br>
    </div>
</body>
</html>

		