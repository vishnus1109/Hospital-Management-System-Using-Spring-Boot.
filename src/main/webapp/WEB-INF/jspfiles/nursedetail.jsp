<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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

    <marquee><h3><a href="nurselist">NURSE-LIST</a></h3></marquee>
    <center>
        <form action="addnurse" method="post">
			
            <br>Name<br><input type="text" name="name"><br>
            IDNUMBER<br><input type="text" name="idnumber"><br>
            DEPARTMENT<br><select id="department" name="department" placeholder="department">
				<option value="select_department">Select_Department</option>

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
        </select>
            <br>Date Of Birth<br><input type="date" name="dateofbirth"><br>
            ID-Proof<br><select id="idproof" name="idproof">
	     	<option value="select_idtype">Select_ID proof</option>
            <option value="aadhaar">AADHAAR</option>
            <option value="voterid">VOTER-ID</option>
            <option value="pancard">PAN</option>
            </select>
            <br>ID_Proof Number<br><input type="text" name="idproofnumber">
            <br>Contact<br><input type="number" name="contact"  required pattern="[0-9]{10}"><br>
            BloodGroup<br><select name="bloodgroup" placeholder="BloodGroup">
				<option value="blood">Select_BloodGroup</option>

                <option value="A+ve">A+ve</option>
                <option value="A-ve">A-ve</option>
                <option value="B+ve">B+ve</option>
                <option value="B-ve">B-ve</option>
                <option value="O+ve">O+ve</option>
                <option value="O-ve">O-ve</option>
                <option value="AB+ve">AB+ve</option>
                <option value="AB-ve">AB-ve</option>
            </select><br>
            Timing<br><select name="timing" placeholder="Timing">
				<option value="select_timing">Select_Timing</option>

            <option value="part time">Part-time</option>
            <option value="full time">Full-time</option>
            </select><br><br>
            <input type="submit" value="click here to Register">
        </form>
    </center>
</body>
</html>
