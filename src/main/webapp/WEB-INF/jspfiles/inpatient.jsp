<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
	<head>
		
		<style>
		        body {
		            background-color: #ADD8E6; /* Light blue background */
		            color: #333;
		            font-family: sans-serif;
		            display: flex;
		            justify-content: center;
		            align-items: center;
		            height: 100vh;
		            margin: 0;
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
		            color: black;
		            text-decoration: none;
					font-weight:bold;
		        }
		        button:hover {
		            background-color: #0056b3; /* Darker blue on hover */
		        }
		        button:active {
		            background-color: #003f7f; /* Even darker blue on click */
		        }				.watermark {
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

	</head><br>
	<div align="center">
	    <body>
			<div class="watermark">BeeVISH</div>

			<body style="background-image: url('image/patients.jpeg'); background-repeat: no-repeat; text-align:center; background-size: cover;" >

	    <button><a href="allRecords">Records Of MaleIp & FemaleIP</a></button><br><br>
			
	
		<button><a href="gents">RegGents</a></button><br><br>
		
		<button><a href="viewgen">View Male IN-Patients</a></button><br><br>
		
		
		<button><a href="ladies">RegLadies</a></button><br><br>
		
		<button><a href="viewlad">View Female IN-Patients</a></button><br><br>
		
		
		<button><a href="children">RegChildren</a></button><br><br>
		
		<button><a href="viewchild">View Child IN-Patients</a></button><br>
		
		</body></div>
		</html>
		