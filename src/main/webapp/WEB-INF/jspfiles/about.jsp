<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <meta charset="UTF-8">
    <title>Hospital Management System</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .container { width: 80%; margin: 0 auto; }
        h1 { color:black;font-weight:bold; text-align: center; }
		h2 { color:black;
			text-align:left;
			font-family:sans-serif;
		}
        p { 
			text-align: left;
		    padding-left: 20px;
		    padding-bottom: 25px;
		    font-family: Arial;
		    letter-spacing: 1.2px;
		    line-height: 30px;
			color:black;
			font-weight:bold;
		}
        .section { margin-bottom: 20px; }
		h3 { 
			color:black;
		    text-align:center;
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
<body><body style="background-image: url('image/hospitaldata.jpg'); background-size: cover; background-repeat: no-repeat; text-align:center">
     <div class="watermark">BeeVISH</div>
	 <div class="container">
        <h1>Hospital Management System</h1>
        <h3>Welcome to the Hospital Management System.<br>
			This application is designed to manage and streamline hospital data efficiently. <br>
			It provides an integrated solution for managing data on outpatients, inpatients, admin, doctors, and hospital departments.</h3>
        <div class="section">
            <h2>Outpatient Data</h2>
            <p>This section handles all information regarding outpatients,<br>
				 including patient details, visit history, and any follow-up requirements.</p>
        </div>

        <div class="section">
            <h2>Inpatient Data</h2>
            <p>Manage inpatient data effectively with details on patient admissions, medical history, ongoing treatments, and discharge information. <br>This ensures organized and accessible records for better patient care.</p>
        </div>

        <div class="section">
            <h2>Admin and Doctor Data</h2>
            <p>Comprehensive details of hospital staff including administrators and doctors are maintained in this module,<br> ensuring easy access to contact information, roles, and work schedules.</p>
        </div>

        <div class="section">
            <h2>Department Management</h2>
            <p>This module organizes hospital departments and links patients and staff according to department needs, providing a clear overview of department-specific operations and resources.</p>
        </div>
    </div>
</body>
</html>

		   
		   
		   					
			