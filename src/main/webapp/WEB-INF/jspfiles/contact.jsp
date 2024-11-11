<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us - Beevish Hospital</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
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
        .contact-container {
            text-align: center;
            max-width: 400px;
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        h1 {
            color: #2c3e50;
            font-size: 24px;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            color: #555555;
        }
        .contact-info {
            margin-top: 10px;
            font-size: 16px;
            color: #333333;
        }
    </style>
</head>
<body>
	<div class="watermark">BeeVISH</div>

    <div class="contact-container">
        <h1>Contact Us</h1>
        <p><strong>Beevish Hospital</strong></p>
        <div class="contact-info">
            <p>Phone: 044-111202 09</p>
            <p>Helpline: 119</p>
            <p>Email: contact@beevishhospital.com</p>
        </div>
        <p>Address: Bhavani</p>
    </div>
</body>
</html>
