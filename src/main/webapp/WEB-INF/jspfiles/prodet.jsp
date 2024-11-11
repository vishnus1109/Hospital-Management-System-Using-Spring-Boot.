<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Beevish Hospital Management System</title>
    <style>
        /* Basic Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            color: #333;
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

        /* Content Container */
        .content {
            background: #ffffff;
            border-radius: 8px;
            padding: 30px;
            max-width: 600px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        /* Headings */
        h1 {
            color: #0073e6;
            font-size: 2em;
            margin-bottom: 10px;
        }

        h2 {
            color: #005bb5;
            font-size: 1.5em;
            margin-top: 20px;
        }

        /* List Styling */
        ul {
            list-style-type: square;
            padding-left: 20px;
            margin-top: 10px;
        }

        ul li {
            margin: 8px 0;
        }
    </style>
</head>
<body>
	<div class="watermark">BeeVISH</div>

    <div class="content">
        <h1>Hospital Management System</h1>
        <p><strong>Developed using:</strong> Spring Boot (Java backend), MySQL (Database), JSP (Frontend)</p>
        <p><strong>Project Duration:</strong> Start Date: 23/09/2024 - Finish Date: 29/10/2024</p>
		<p><strong>Developer:</strong>S.VISHNU B.Tech IT</p>
        
        <h2>Project Features</h2>
        <ul>
            <li><strong>CRUD Operations:</strong> Create, Read, Update, Delete records for patients, doctors, and departments.</li>
            <li><strong>Mail Service:</strong> Integrated email notifications for patient updates and reminders.</li>
            <li><strong>Excel Sheet Handling:</strong> Supports reading and writing Excel files for data management.</li>
            <li><strong>Search Functionality:</strong> Allows quick search across hospital records.</li>
        </ul>
    </div>
</body>
</html>
