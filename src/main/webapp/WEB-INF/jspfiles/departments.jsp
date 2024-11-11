<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<html>
	
<head>
	<h1>SERVICES</h1>
    <title>Hospital Departments</title>
    <style>
		h2,p{
			text-decoration:underline;
			
		}
		h1{
			color:#000043;
		}
        body {
            font-family: Arial,Times;
            background-color: #e0f7fa; /* Light blue background */
            color: #007bb5; /* Dark blue text */
            text-align: center;
			background-color:#365563;
			background-size:cover;
        }

        .dep-container {
				    display: flex;
				    justify-content: center;
				    flex-wrap: wrap;
				    gap: 20px;
					margin-top:100px;
				}

				.dep-card {
				    background-color: grey;
				    border-radius: 10px;
				    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
				    max-width: 300px;
				    text-align: center;
				    overflow: hidden;
				    transition: transform 0.3s ease;
				}

				.dep-card:hover {
				    transform: translateY(-10px);
				}

				.dep-card img {
				    width: 100%;
				    height: 300px;
				    object-fit: cover;
				    border-bottom: 2px solid #007bff;
				}

				.dep-info {
				    padding: 20px;
				}

				.dep-info h2 {
				    color: #333;
				    margin: 0 0 10px;
				}

				.dep-info p {
				    color: #555;
				    font-size: 16px;
				    margin: 0 0 15px;
				}

				.social-links {
				    display: flex;
				    justify-content: center;
				    gap: 10px;
				}
                .social-links a {
				    text-decoration: none;
				    color: #007bff;
				    border: 1px solid #007bff;
				    padding: 5px 10px;
				    border-radius: 5px;
				    transition: background-color 0.3s ease;
				}

				.social-links a:hover {
				    background-color: #007bff;
				    color: white;
				}
    </style>
</head>
<body>

    <div class="dep-container">
        <a href="emergency"><div class="dep-card">
            <img src='image/emergency1.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>Emergency</h2>
				<p>When the seconds count,We.re there first</p>
            </div>
        </div></a>


        <a href="surgery"><div class="dep-card">
            <img src='image/surgery1.jpeg'alt="Author Image">
            <div class="dep-info">
                <h2>Surgery</h2>
				<p>Better to open and see than to wait and see</p>
            </div>
        </div></a>



        <a href="icu"><div class="dep-card">
            <img src='image/icu1.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>ICU</h2>
				<p>Being new in the ICU</p>
                
            </div>
        </div></a>


        <a href="cardiology"><div class="dep-card">
            <img src='image/cardiology1.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>Cardiology</h2>
				<p>cute enough to stop your heart,skilled enough to restart it</p>
                
            </div>
        </div></a>


        <a href="neurology"><div class="dep-card">
            <img src='image/neurology1.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>Neurology</h2>
				<p>Deals with disorders of the nervous system.</p>
                
            </div>
        </div></a>


        <a href="psychiatry"><div class="dep-card">
            <img src='image/psychiatry1.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>Psychiatry</h2>
				<p>Reality is neurology and is not absolute</p>
                
            </div>
        </div></a>



        <a href="radiology"><div class="dep-card">
            <img src='image/radiology1.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>Radiology</h2>
				<p>We can lie but Radiology don't</p>
             </div>
        </div></a>



        <a href="laboratory"><div class="dep-card">
            <img src='image/lab.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>Laboratory</h2>
				<p>What we work on today,others will first think of tommarrow</p>
            </div>
        </div></a>



        <a href="rehabiliation"><div class="dep-card">
            <img src='image/rehb.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>Rehabilitation</h2>
				<p>Recovery is about progression not perfection</p>
               
            </div>
        </div></a>


        <a href="ent"><div class="dep-card">
            <img src='image/ent.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>ENT</h2>
				<p>Hear,Smell and Taste a healthier life!</p>
             </div>
        </div></a>


        <a href="geriatric"><div class="dep-card">
            <img src='image/rehabiliation.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>Geriatric</h2>
				<p>There is no pleasure worth forgoing just for an extra three years in the geriatric ward</p>
                          </div>
        </div></a>


        <a href="pregnancy"><div class="dep-card">
            <img src='image/pregnancy.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>pregnancy Ward</h2>
				<p>There is no better feeling than the movement of life inside you</p>
                
            </div>
        </div></a>

        <a href="pediatric"><div class="dep-card">
            <img src='image/pediatric.jpeg' alt="Author Image">
            <div class="dep-info">
                <h2>pediatric</h2>
				<p>Because babies don't come with owner's manuals</p>
                
            </div>
        </div></a>
        </div>
</body>
</html>