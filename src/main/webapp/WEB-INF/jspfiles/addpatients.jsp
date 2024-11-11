<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="icon" href="image/titlelogo.png">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f7fa; /* Light blue background */
            color: #007bb5; /* Dark blue text */
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

        marquee h3 {
            color: #007bb5; /* Dark blue for the marquee text */
        }

        form {
            background-color: #ffffff; /* White form background */
            padding: 20px;
            border: 1px solid #007bb5; /* Dark blue border */
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 123, 181, 0.5); /* Blue shadow */
        }

        input[type="text"],
        input[type="number"],
        input[type="date"],
        input[type="textarea"],
        select {
            width: 10%;
            padding: 10px;
            margin: 5px 0 15px 0;
            display: inline-block;
            border: 1px solid #007bb5; /* Dark blue border */
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bb5; /* Dark blue button */
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #005f86; /* Darker blue on hover */
        }
    </style>
</head>
<body>
	<div class="watermark">BeeVISH</div>

    <marquee><h3>Outpatient's Form</h3></marquee>
    <center>
        <form action="addingop" method="post">
			
            <br>Name<br><input type="text" name="name">
            <br>Gender<br><select name="gender" placeholder="Gender">
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="others">Others</option>
            </select><br>
            Age<br><input type="number" name="age">
            <br>Date Of Birth<br><input type="date" name="dateofbirth"><br>
            BloodGroup<br><select name="bloodgroup" placeholder="BloodGroup">
                <option value="A+ve">A+ve</option>
                <option value="A-ve">A-ve</option>
                <option value="B+ve">B+ve</option>
                <option value="B-ve">B-ve</option>
                <option value="O+ve">O+ve</option>
                <option value="O-ve">O-ve</option>
                <option value="AB+ve">AB+ve</option>
                <option value="AB-ve">AB-ve</option>
            </select>
            <br>MobileNumber<br><input type="number" name="mobileNumber">
            <br>Issue<br><input type="textarea" size="20" width="20" name="issue">
            <br>Date<br><input type="date" name="date"><br><br>
            <input type="submit" value="click here to Register">
        </form>
    </center>
</body>
</html>
