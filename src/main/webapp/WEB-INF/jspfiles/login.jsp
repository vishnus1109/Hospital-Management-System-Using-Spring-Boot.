<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<html>
<head>
    <title>Log 2 Go...</title>
    <link rel="icon" type="image/png" href="images/favicon.png">
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
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100px;
            text-align: center;
        }
        input[type="email"], input[type="password"] {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #007bb5; /* Dark blue border */
            border-radius: 5px;
            width: 90%;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bb5; /* Dark blue button */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #005f86; /* Darker blue on hover */
        }
        .overlay {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0,0,0,0.5); /* Black with a bit of transparency */
            z-index: 2; /* Sit on top */
        }
        .overlay .spinner {
y            position: absolute;
            top: 50%;
            left: 46%;
            transform: translate(-50%, -50%);
            border: 16px solid #f3f3f3; /* Light grey */
            border-top: 16px solid #3498db; /* Blue */
            border-radius: 50%;
            width: 80px;
            height: 80px;
            animation: spin 2s linear infinite;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
    <script>
        function showLoading() {
            document.getElementById('overlay').style.display = 'block';
            setTimeout(() => {
                document.getElementById('overlay').style.display = 'none';
                document.forms[0].submit(); // Submit the form after the delay
            }, 3000); // 3 seconds delay
            return false;
        }
    </script>
</head>
<body>
    <div id="overlay" class="overlay">
        <div class="spinner"></div>
    </div>
    <form onsubmit="return showLoading()" action="chkusr" method="post">
        <input type="email" name="email" placeholder="Email"><br>
        <input type="password" name="password" placeholder="Password"><br>
        <input type="submit" value="Login Here">
    </form>
</body>
</html>
