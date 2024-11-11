<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
</head>
<style>
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
	table {
	            width: 100%;
	            border-collapse: collapse;
				max-height: 400px; 
				overflow-y: auto;
	        }
	        
	        table, th, td {
	            border: 1px solid #007bb5; /* Dark blue border */
	            padding: 10px;
	            text-align: left;
				color: Black;
				font-weight:bold;
	        }
	        
	        th {
	            background-color: #007bb5; /* Dark blue header */
	            color: white;
				font-weight:bold;
				position: sticky;
			     top: 0;
	        }
			</style>
<body>
	<body style="background-image: url('image/patients.jpg'); background-size: cover; background-repeat: no-repeat; text-align:center">
		<div class="watermark">BeeVISH</div>

    <marquee><h2>Gents and Ladies Data</h2></marquee>
    <table border="1" align="center">
        <thead>
            
				<tr>           
				                <th>Gender</th>
								<th>Name</th>
								<th>AadhaarNumber</th>
								<th>Age</th>
								<th>DateOfBirth</th>
								<th>BloodGroup</th>
								<th>MobileNumber</th>
								<th>Problem</th>
								<th>Address</th>
								<th>Gaurdian</th>
								<th>AdmitIn</th>
								<th>AdmitOn</th>
								<th>DischargeOn</th>
								
                			<c:forEach items="${gents}" var="g">	
							<tr>
								<td>${g.usertype}</td>
								<td>${g.name}</td>
								<td>${g.aadhaarnumber}</td>
								<td>${g.age}</td>
								<td>${g.dateofbirth}</td>
								<td>${g.bloodgroup}</td>
								<td>${g.mobilenumber}</td>
								<td>${g.problem}</td>
								<td>${g.address}</td>
								<td>${g.gaurdian}</td>
								<td>${g.admitin}</td>
								<td>${g.admiton}</td>
								<td>${g.dischargeon}</td>
								</tr>
								</c:forEach>
								<c:forEach items="${ladies}" var="l">	
															<tr>
																<td>${l.usertype}</td>
																<td>${l.name}</td>
																<td>${l.aadhaarnumber}</td>
																<td>${l.age}</td>
																<td>${l.dateofbirth}</td>
																<td>${l.bloodgroup}</td>
																<td>${l.mobilenumber}</td>
																<td>${l.problem}</td>
																<td>${l.address}</td>
																<td>${l.gaurdian}</td>
																<td>${l.admitin}</td>
																<td>${l.admiton}</td>
																<td>${l.dischargeon}</td>
																</tr>
																</c:forEach>					
								
        </tbody>
    </table>
</body>
</html>
