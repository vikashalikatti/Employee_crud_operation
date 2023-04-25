<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Employee</title>
<!-- Add custom fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap" rel="stylesheet">
<!-- Add Font Awesome icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
<!-- Add custom CSS -->
<style>
    body {
        font-family: 'Roboto', sans-serif;
        background-color: #f5f5f5;
        color: #333;
        background-image: linear-gradient(120deg, #84fab0 0%, #8fd3f4 100%);
    }

    h1 {
        text-align: center;
        margin-bottom: 1.5rem;
        text-shadow: 2px 2px rgba(0, 0, 0, 0.1);
    }

    table {
        width: 100%;
        max-width: 1000px;
        margin: 0 auto;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
        border-radius: 10px;
        overflow: hidden;
    }

    th, td {
        padding: 1rem;
        text-align: left;
        border-bottom: 1px solid #eee;
    }

    th {
        background-color: #4CAF50;
        color: #fff;
        font-weight: bold;
    }

    tr:hover {
        background-color: #f5f5f5;
    }

    .action-btn {
        cursor: pointer;
    }

    .action-btn:hover {
        color: #4CAF50;
    }

    /* Add CSS3 animations */
    @keyframes fadeIn {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    table {
        animation: fadeIn 1s ease-in-out;
    }
</style>
</head>
<body>
    <h1>Employee details are</h1>
    <br>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Mobile</th>
                <th>Salary</th>
                <th>TAX</th>
                <th>Take Home</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <!-- Your Java code will generate the rows dynamically -->
        </tbody>
    </table>

   
</body>
</html>
	