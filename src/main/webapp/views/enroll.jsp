<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>EduMaster - Student Enrollment</title>

<style>
/* GENERAL CSS */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Arial, sans-serif;
}

/* BACKGROUND PICTURE */
body {
    min-height: 100vh;
    padding-top: 85px;

    background:
        linear-gradient(
            rgba(35, 25, 80, 0.55),
            rgba(75, 45, 130, 0.60)
        ),
        url("https://images.unsplash.com/photo-1523050854058-8df90110c9f1?auto=format&fit=crop&w=1920&q=85");

    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
}

/* TOP NAVBAR */
.navbar {
    width: 100%;
    padding: 18px 7%;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 1000;

    display: flex;
    justify-content: space-between;
    align-items: center;

    background: #ffffff;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.12);
}

.logo {
    font-size: 24px;
    font-weight: bold;
    color: #6741b5;
    text-decoration: none;
    white-space: nowrap;
}

.nav-links {
    display: flex;
    align-items: center;
    gap: 28px;
}

.nav-links a {
    text-decoration: none;
    color: #33334d;
    font-size: 15px;
    font-weight: 600;
    transition: 0.3s;
}

.nav-links a:hover {
    color: #7955d9;
}

.nav-links .enroll-btn {
    padding: 11px 22px;
    color: white;
    background: linear-gradient(135deg, #667eea, #764ba2);
    border-radius: 25px;
}

.nav-links .enroll-btn:hover {
    color: white;
    transform: translateY(-2px);
}

/* FORM CONTAINER */
.container {
    width: 90%;
    max-width: 650px;
    margin: 30px auto;
    background: rgba(255, 255, 255, 0.97);
    padding: 35px 40px;
    border-radius: 22px;
    box-shadow: 0 20px 50px rgba(25, 20, 70, 0.25);
}

.header {
    text-align: center;
    margin-bottom: 30px;
}

.header .icon {
    font-size: 42px;
    margin-bottom: 8px;
}

.header h1 {
    color: #493a92;
    font-size: 30px;
    margin-bottom: 8px;
}

.header p {
    color: #777;
    font-size: 14px;
}

/* FORM FIELDS */
.form-group {
    margin-bottom: 20px;
}

.form-group label,
.field-label {
    display: block;
    color: #33334d;
    font-weight: 600;
    font-size: 14px;
    margin-bottom: 9px;
}

.form-group input[type="text"],
.form-group input[type="email"],
.form-group input[type="tel"],
.form-group select {
    width: 100%;
    padding: 13px 15px;
    border: 1.5px solid #dedcf0;
    border-radius: 10px;
    background: #faf9ff;
    color: #333;
    font-size: 14px;
    outline: none;
    transition: 0.3s;
}

.form-group input:focus,
.form-group select:focus {
    border-color: #7965df;
    background: white;
    box-shadow: 0 0 0 4px rgba(121, 101, 223, 0.12);
}

/* RADIO BUTTONS AND CHECKBOXES */
.options {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
}

.option {
    display: flex;
    align-items: center;
    gap: 8px;
    padding: 11px 15px;
    border: 1px solid #e1def4;
    border-radius: 10px;
    background: #faf9ff;
    color: #45405f;
    font-size: 14px;
    cursor: pointer;
    transition: 0.2s;
}

.option:hover {
    border-color: #7965df;
    background: #f0edff;
}

.option input {
    accent-color: #7059d9;
    cursor: pointer;
}

/* ENROLL BUTTON */
.submit-btn {
    width: 100%;
    margin-top: 10px;
    padding: 15px;
    border: none;
    border-radius: 12px;

    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white;
    font-size: 16px;
    font-weight: 700;
    cursor: pointer;

    box-shadow: 0 7px 18px rgba(102, 90, 190, 0.3);
    transition: 0.3s;
}

.submit-btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 25px rgba(102, 90, 190, 0.4);
}

/* FOOTER */
.footer {
    text-align: center;
    color: #888;
    font-size: 12px;
    margin-top: 22px;
}

/* MOBILE RESPONSIVE */
@media (max-width: 650px) {
    .navbar {
        padding: 14px 4%;
        flex-direction: column;
        gap: 14px;
    }

    .nav-links {
        justify-content: center;
        flex-wrap: wrap;
        gap: 12px 17px;
    }

    .nav-links a {
        font-size: 13px;
    }

    .nav-links .enroll-btn {
        padding: 9px 15px;
    }

    body {
        padding-top: 120px;
        background-attachment: scroll;
    }

    .container {
        padding: 28px 20px;
    }

    .header h1 {
        font-size: 25px;
    }
}
</style>
</head>

<body>

<!-- TOP NAVBAR -->
<nav class="navbar">

    <a href="#" class="logo">🎓 EduMaster</a>

    <div class="nav-links">
        <a href=></a>
        <a href="home">Home</a>
        <a href="courses">Course</a>
        <a href="#about">About</a>
        <a href="allstudent">Students</a>
        <a href="enroll" class="enroll-btn">Enroll Now →</a>
    </div>

</nav>

<!-- STUDENT ENROLLMENT FORM -->
<div class="container" id="enroll">

    <div class="header">
        <div class="icon">🎓</div>
        <h1>Student Enrollment</h1>
        <p>Start your learning journey with us!</p>
    </div>

    <form:form action="save" modelAttribute="student" method="post">

        <div class="form-group">
            <label>👤 Enter Your Name</label>
            <form:input path="Name"
                placeholder="Enter your full name"
                required="required"/>
        </div>

        <div class="form-group">
            <label>📱 Mobile Number</label>
            <form:input path="Mobile_No" type="tel"
                placeholder="Enter your mobile number"
                required="required"/>
        </div>

        <div class="form-group">
            <label>✉️ Email Address</label>
            <form:input path="Email" type="email"
                placeholder="Enter your email address"
                required="required"/>
        </div>

        <div class="form-group">
            <span class="field-label">⚧ Select Gender</span>

            <div class="options">
                <label class="option">
                    <form:radiobutton path="Gender" value="Male"/>
                    Male
                </label>

                <label class="option">
                    <form:radiobutton path="Gender" value="Female"/>
                    Female
                </label>
            </div>
        </div>

        <div class="form-group">
            <label>📍 Select Your City</label>

            <form:select path="Address">
                <form:option value="Pune">Pune</form:option>
                <form:option value="Delhi">Delhi</form:option>
                <form:option value="Hyderabad">Hyderabad</form:option>
            </form:select>
        </div>

        <div class="form-group">
            <label>💻 Choose Your Course</label>

            <form:select path="Coursename">
                <form:option value="Java Full Stack Developer">
                    Java Full Stack Developer
                </form:option>

                <form:option value="Python Full Stack Developer">
                    Python Full Stack Developer
                </form:option>

                <form:option value="C# Full Stack Developer">
                    C# Full Stack Developer
                </form:option>
            </form:select>
        </div>

        <div class="form-group">
            <span class="field-label">🕒 Select Preferred Timing</span>

            <div class="options">
                <label class="option">
                    <form:checkbox path="Timing" value="Morning"/>
                    Morning
                </label>

                <label class="option">
                    <form:checkbox path="Timing" value="Afternoon"/>
                    Afternoon
                </label>

                <label class="option">
                    <form:checkbox path="Timing" value="Evening"/>
                    Evening
                </label>
            </div>
        </div>

        <button type="submit" class="submit-btn">
            Enroll Now →
        </button>

    </form:form>

    <div class="footer">
        © 2026 EduMaster | Learn • Grow • Succeed
    </div>

</div>

</body>
</html>