<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="icon" href="image/titlelogo.png">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 160vh;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
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
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            color: #333;
        }
        input, select, textarea {
            margin-bottom: 10px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #f9f9f9;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
	<div class="watermark">BeeVISH</div>

    <div class="container">
        <h2>Inpatient-Children</h2>
        <form action="inchild" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
            
            <label for="age">Age:</label>
            <input type="text" id="age" name="age">
            
            <label for="dateofbirth">DOB:</label>
            <input type="date" id="dateofbirth" name="dateofbirth">
            
            <label for="bloodgroup">Blood Group:</label>
            <select id="bloodgroup" name="bloodgroup">
                <option value="A+ve">A+ve</option>
                <option value="A-ve">A-ve</option>
                <option value="B+ve">B+ve</option>
                <option value="B-ve">B-ve</option>
                <option value="O+ve">O+ve</option>
                <option value="O-ve">O-ve</option>
                <option value="AB+ve">AB+ve</option>
                <option value="AB-ve">AB-ve</option>
            </select>
            
            <label for="mobilenumber">Mobile Number:</label>
            <input type="text" id="mobilenumber" name="mobilenumber">
            
            <label for="address">Address:</label>
            <input type="text" id="address" name="address">
            
            <label for="father">Father:</label>
            <input type="text" id="father" name="father">
            
            <label for="mother">Mother:</label>
            <input type="text" id="mother" name="mother">
            
            <label for="aadhaarnumber">Aadhaar No:</label>
            <input type="text" id="aadhaarnumber" name="aadhaarnumber">
            
            <label for="problem">Problem:</label>
            <textarea id="problem" name="problem" rows="4" cols="40"></textarea>
            
            <label for="admitin">Admitted In:</label>
            <select id="admitin" name="admitin">
                <option value="emergency">Emergency</option>
                <option value="surgery">Surgery</option>
                <option value="ICU">ICU</option>
                <option value="cardiology">Cardiology</option>
                <option value="neurology">Neurology</option>
                <option value="psychiatry">Psychiatry</option>
                <option value="radiology">Radiology</option>
                <option value="laboratory">Laboratory</option>
                <option value="pediatric">Pediatric</option>
                <option value="ENT">ENT</option>
                
            </select>
            
            <label for="admiton">Admit On:</label>
            <input type="date" id="admiton" name="admiton">
            
            <label for="discharge">Discharge On:</label>
            <input type="date" id="discharge" name="discharge">
            
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
