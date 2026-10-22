<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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
        background: #f4f7fb;
        color: #333;
        min-height: 100vh;
    }

    /* Navbar */
    .navbar {
        background: linear-gradient(135deg, #2c3e50, #3498db);
        color: white;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 18px 5%;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.12);
    }

    .logo {
        font-size: 24px;
        font-weight: bold;
        letter-spacing: 1px;
    }

    .navbar ul {
        list-style: none;
        display: flex;
        gap: 25px;
    }

    .navbar ul li a {
        color: white;
        text-decoration: none;
        font-size: 15px;
        font-weight: 500;
        transition: 0.3s;
    }

    .navbar ul li a:hover {
        color: #f1c40f;
    }

    /* Main Container */
    .container {
        width: 95%;
        max-width: 1400px;
        margin: 40px auto;
    }

    .page-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 22px;
        flex-wrap: wrap;
        gap: 12px;
    }

    h2 {
        color: #2c3e50;
        font-size: 28px;
    }

    .subtitle {
        color: #7f8c8d;
        margin-top: 6px;
        font-size: 14px;
    }

    /* Table Wrapper */
    .table-wrapper {
        background: white;
        border-radius: 12px;
        overflow-x: auto;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.07);
    }

    /* Table */
    table {
        width: 100%;
        min-width: 1000px;
        border-collapse: collapse;
    }

    thead {
        background: #3498db;
        color: white;
    }

    th {
        padding: 16px 14px;
        text-align: left;
        text-transform: uppercase;
        font-size: 12px;
        letter-spacing: 0.6px;
        white-space: nowrap;
    }

    td {
        padding: 15px 14px;
        border-bottom: 1px solid #edf0f4;
        font-size: 14px;
        white-space: nowrap;
    }

    tbody tr {
        transition: background 0.2s ease;
    }

    tbody tr:nth-child(even) {
        background: #f8fafc;
    }

    tbody tr:hover {
        background: #eaf4ff;
    }

    tbody tr:last-child td {
        border-bottom: none;
    }

    /* Student ID */
    .student-id {
        color: #2980b9;
        font-weight: bold;
    }

    /* Fee */
    .fee {
        color: #198754;
        font-weight: 600;
    }

    /* Action Buttons Styling */
    .btn-action {
        display: inline-block;
        padding: 7px 14px;
        border-radius: 6px;
        font-size: 13px;
        font-weight: 600;
        text-decoration: none;
        transition: all 0.2s ease;
        text-align: center;
    }

    .btn-update {
        background-color: #e3f2fd;
        color: #1976d2;
        border: 1px solid #90caf9;
    }

    .btn-update:hover {
        background-color: #1976d2;
        color: white;
        box-shadow: 0 4px 10px rgba(25, 118, 210, 0.2);
    }

    .btn-delete {
        background-color: #ffebee;
        color: #d32f2f;
        border: 1px solid #ef9a9a;
    }

    .btn-delete:hover {
        background-color: #d32f2f;
        color: white;
        box-shadow: 0 4px 10px rgba(211, 47, 47, 0.2);
    }

    /* Empty Message */
    .empty-message {
        text-align: center;
        padding: 30px;
        color: #777;
        font-size: 16px;
    }

    /* Footer */
    .footer {
        text-align: center;
        color: #7f8c8d;
        font-size: 13px;
        padding: 20px;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .navbar {
            flex-direction: column;
            gap: 15px;
            padding: 18px;
        }

        .navbar ul {
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
        }

        .container {
            width: 96%;
            margin: 25px auto;
        }

        h2 {
            font-size: 23px;
        }
    }
</style>
</head>

<body>

    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="logo">Student Portal</div>

        <ul>
            <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/student">Students</a></li>
            <li><a href="${pageContext.request.contextPath}/courses">Courses</a></li>
            <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
        </ul>
    </nav>

    <!-- Main Content -->
    <div class="container">

        <div class="page-header">
            <div>
                <h2>Student Information</h2>
                <p class="subtitle">
                    View all registered student details below.
                </p>
            </div>
        </div>

        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Course Name</th>
                        <th>Email</th>
                        <th>Mobile No</th>
                        <th>Gender</th>
                        <th>Timing</th>
                        <th>Address</th>
                        <th>Fee</th>
                        <th>Update</th>
                        <th>Delete</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="student" items="${student}">
                        <tr>
                            <td class="student-id">
                                <c:out value="${student.id}"/>
                            </td>

                            <td>
                                <c:out value="${student.name}"/>
                            </td>

                            <td>
                                <c:out value="${student.coursename}"/>
                            </td>

                            <td>
                                <c:out value="${student.email}"/>
                            </td>

                            <td>
                                <c:out value="${student.mobile_No}"/>
                            </td>

                            <td>
                                <c:out value="${student.gender}"/>
                            </td>

                            <td>
                                <c:out value="${student.timing}"/>
                            </td>

                            <td>
                                <c:out value="${student.address}"/>
                            </td>

                            <td class="fee">
                                <c:out value="${student.fee}"/>
                            </td>

                            <td>
                                <a href="update/${student.id}" class="btn-action btn-update">Update</a>
                            </td>

                            <td>
                                <a href="delete/${student.id}" class="btn-action btn-delete" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                            </td>
                            
                        </tr>
                    </c:forEach>

                    <!-- Show message when no students exist -->
                    <c:if test="${empty student}">
                        <tr>
                            <td colspan="11" class="empty-message">
                                No student records found.
                            </td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>

    </div>

    <footer class="footer">
        &copy; Student Portal | Student Management System
    </footer>

</body>
</html>