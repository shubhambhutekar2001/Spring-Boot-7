<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
<style>
    /* Global Styles */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        background-color: #f4f6f9;
        color: #333;
    }

    /* Navbar Styles */
    .navbar {
        background-color: #2c3e50;
        color: white;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 1rem 2rem;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .navbar .logo {
        font-size: 1.5rem;
        font-weight: bold;
        letter-spacing: 1px;
    }

    .navbar ul {
        list-style: none;
        display: flex;
        gap: 1.5rem;
    }

    .navbar ul li a {
        color: white;
        text-decoration: none;
        font-size: 1rem;
        transition: color 0.3s ease;
    }

    .navbar ul li a:hover {
        color: #3498db;
    }

    /* Container for Table */
    .container {
        max-width: 1200px;
        margin: 2rem auto;
        padding: 0 1rem;
        overflow-x: auto;
    }

    h2 {
        margin-bottom: 1rem;
        color: #2c3e50;
    }

    /* Table Styles */
    table {
        width: 100%;
        border-collapse: collapse;
        background: white;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        padding: 12px 15px;
        text-align: left;
    }

    th {
        background-color: #3498db;
        color: white;
        text-transform: uppercase;
        font-size: 0.85rem;
        letter-spacing: 0.5px;
    }

    tr:nth-child(even) {
        background-color: #f8f9fa;
    }

    tr:hover {
        background-color: #f1f5f8;
        transition: background 0.2s ease;
    }

    td {
        border-bottom: 1px solid #e9ecef;
        font-size: 0.95rem;
    }
</style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="logo">Student Portal</div>
        <ul>
            <li><a href="/home">Home</a></li>
            <li><a href="/allstudent">Students</a></li>
            <li><a href="/courses">Courses</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <h2>Student Information</h2>
        <table>
            <tr>   
                <th>Id</th>
                <th>Name</th>
                <th>Course name</th>
                <th>Email</th>
                <th>Mobile no</th>
                <th>Gender</th>
                <th>Timing</th>
                <th>Address</th>
                <th>Fee</th>
            </tr>
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.coursename}</td>
                <td>${student.email}</td>
                <td>${student.mobile_No}</td>
                <td>${student.gender}</td>
                <td>${student.timing}</td>
                <td>${student.address}</td>
                <td>${student.fee}</td>
            </tr>
        </table>
    </div>

</body>
</html>