
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>EduMaster - Home</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Arial, sans-serif;
}

html {
    scroll-behavior: smooth;
    scroll-padding-top: 90px;
}

body {
    background: #f8f7ff;
    color: #33334d;
    line-height: 1.6;
}

/* NAVBAR */
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
    background: #fff;
    box-shadow: 0 4px 15px rgba(0,0,0,0.12);
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
    gap: 25px;
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
    padding: 10px 21px;
    color: white;
    background: linear-gradient(135deg, #667eea, #764ba2);
    border-radius: 25px;
}

/* HERO SECTION */
.hero {
    min-height: 650px;
    padding: 150px 7% 90px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: white;

    background:
        linear-gradient(
            rgba(35, 25, 80, 0.72),
            rgba(75, 45, 130, 0.78)
        ),
        url("https://images.unsplash.com/photo-1523050854058-8df90110c9f1?auto=format&fit=crop&w=1920&q=85");

    background-size: cover;
    background-position: center;
}

.hero-content {
    max-width: 850px;
}

.hero-tag {
    display: inline-block;
    padding: 8px 18px;
    margin-bottom: 22px;
    border: 1px solid rgba(255,255,255,0.5);
    border-radius: 30px;
    background: rgba(255,255,255,0.12);
    font-size: 14px;
}

.hero h1 {
    font-size: clamp(36px, 5vw, 60px);
    line-height: 1.2;
    margin-bottom: 22px;
}

.hero h1 span {
    color: #d8c8ff;
}

.hero p {
    max-width: 680px;
    margin: 0 auto 32px;
    font-size: 18px;
    color: #f0eaff;
}

.btn {
    display: inline-block;
    padding: 14px 28px;
    margin: 6px;
    border-radius: 30px;
    text-decoration: none;
    font-weight: 700;
    transition: 0.3s;
}

.btn-primary {
    color: white;
    background: linear-gradient(135deg, #667eea, #764ba2);
    box-shadow: 0 7px 18px rgba(0,0,0,0.2);
}

.btn-secondary {
    color: white;
    border: 1.5px solid white;
    background: transparent;
}

.btn:hover {
    transform: translateY(-3px);
}

/* COMMON SECTIONS */
section {
    padding: 75px 7%;
}

.section-heading {
    text-align: center;
    margin-bottom: 42px;
}

.section-heading h2 {
    font-size: 34px;
    color: #493a92;
    margin-bottom: 10px;
}

.section-heading p {
    color: #777;
    font-size: 15px;
}

.section-heading .line {
    width: 65px;
    height: 4px;
    margin: 15px auto 0;
    border-radius: 5px;
    background: linear-gradient(135deg, #667eea, #764ba2);
}

/* COURSES */
.courses {
    background: #fff;
}

.course-grid {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 25px;
}

.course-card {
    padding: 30px 25px;
    border: 1px solid #e8e3fa;
    border-radius: 18px;
    background: #fff;
    box-shadow: 0 8px 25px rgba(50,30,100,0.07);
    transition: 0.3s;
}

.course-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 15px 35px rgba(50,30,100,0.14);
}

.course-icon {
    width: 65px;
    height: 65px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 20px;
    border-radius: 16px;
    background: #f0edff;
    font-size: 32px;
}

.course-card h3 {
    color: #493a92;
    font-size: 21px;
    margin-bottom: 12px;
}

.course-card p {
    color: #777;
    font-size: 14px;
    margin-bottom: 20px;
}

.course-link {
    color: #7059d9;
    font-weight: 700;
    text-decoration: none;
}

/* ABOUT */
.about {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 55px;
    align-items: center;
}

.about-image {
    min-height: 350px;
    border-radius: 22px;
    background:
        linear-gradient(rgba(75,45,130,0.12),
                        rgba(75,45,130,0.12)),
        url("https://images.unsplash.com/photo-1521737711867-e3b97375f902?auto=format&fit=crop&w=1000&q=85");
    background-size: cover;
    background-position: center;
    box-shadow: 0 15px 35px rgba(50,30,100,0.15);
}

.about-content h2 {
    color: #493a92;
    font-size: 34px;
    line-height: 1.25;
    margin-bottom: 18px;
}

.about-content p {
    color: #6d6a7b;
    margin-bottom: 18px;
}

.benefit {
    margin: 12px 0;
    font-weight: 600;
    color: #45405f;
}

/* BENEFITS */
.why-us {
    background: #f0edff;
}

.benefit-grid {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 22px;
}

.benefit-card {
    padding: 25px;
    text-align: center;
    background: white;
    border-radius: 16px;
    box-shadow: 0 6px 20px rgba(50,30,100,0.06);
}

.benefit-card .icon {
    font-size: 35px;
    margin-bottom: 12px;
}

.benefit-card h3 {
    color: #493a92;
    margin-bottom: 8px;
}

.benefit-card p {
    font-size: 14px;
    color: #777;
}

/* CALL TO ACTION */
.cta {
    text-align: center;
    color: white;
    background: linear-gradient(135deg, #667eea, #764ba2);
}

.cta h2 {
    font-size: 34px;
    margin-bottom: 12px;
}

.cta p {
    margin-bottom: 24px;
    color: #f0eaff;
}

.cta .btn {
    background: white;
    color: #6741b5;
}

/* CONTACT */
.contact {
    text-align: center;
    background: white;
}

.contact p {
    color: #777;
    margin: 10px 0;
}

.contact a {
    color: #7059d9;
    text-decoration: none;
    font-weight: 600;
}

/* FOOTER */
.footer {
    padding: 25px 7%;
    text-align: center;
    color: #e5defb;
    background: #292044;
    font-size: 13px;
}

.footer a {
    color: white;
    text-decoration: none;
}

/* RESPONSIVE */
@media (max-width: 900px) {
    .navbar {
        padding: 15px 4%;
    }

    .nav-links {
        gap: 14px;
    }

    .course-grid,
    .benefit-grid {
        grid-template-columns: repeat(2, minmax(0, 1fr));
    }

    .about {
        gap: 30px;
    }
}

@media (max-width: 650px) {
    html {
        scroll-padding-top: 150px;
    }

    .navbar {
        flex-direction: column;
        gap: 10px;
        padding: 12px 4%;
    }

    .logo {
        font-size: 22px;
    }

    .nav-links {
        justify-content: center;
        flex-wrap: wrap;
        gap: 9px 15px;
    }

    .nav-links a {
        font-size: 12px;
    }

    .nav-links .enroll-btn {
        padding: 7px 12px;
    }

    .hero {
        min-height: 570px;
        padding: 175px 5% 70px;
    }

    .hero p {
        font-size: 15px;
    }

    section {
        padding: 55px 5%;
    }

    .section-heading h2,
    .about-content h2,
    .cta h2 {
        font-size: 28px;
    }

    .course-grid,
    .benefit-grid,
    .about {
        grid-template-columns: 1fr;
    }

    .about-image {
        min-height: 260px;
    }
}
</style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar">
    <a href="#home" class="logo">🎓 EduMaster</a>

    <div class="nav-links">
        <a href="home">Home</a>
        <a href="courses">Courses</a>
        <a href="#about">About</a>
        <a href="/allstudent">Student</a>
        <a href="enrollment" class="enroll-btn">Enroll Now →</a>
    </div>
</nav>

<!-- HERO -->
<section class="hero" id="home">
    <div class="hero-content">
        <div class="hero-tag">🎓 Learn Today, Lead Tomorrow</div>

        <h1>
            Build Your Future With
            <span>EduMaster</span>
        </h1>

        <p>
            Discover your potential with industry-focused courses.
            Develop practical skills, learn from structured training,
            and take the next step toward your dream career.
        </p>

     <a href="#" class="btn btn-primary">
            Start Learning Today →
        </a>

        <a href="courses" class="btn btn-secondary">
            Explore Courses
        </a>
    </div>
</section>

<!-- COURSES -->
<section class="courses" id="course">
    <div class="section-heading">
        <h2>Explore Our Courses</h2>
        <p>Choose a learning path that matches your career goals.</p>
        <div class="line"></div>
    </div>

    <div class="course-grid">

        <div class="course-card">
            <div class="course-icon">☕</div>
            <h3>Java Full Stack Developer</h3>
            <p>
                Learn Java programming, backend development,
                databases, and frontend fundamentals to build
                full-stack applications.
            </p>
            <a href="student" class="course-link">
                Enroll in Java →
            </a>
        </div>

        <div class="course-card">
            <div class="course-icon">🐍</div>
          <a href="https://www.w3schools.com/python/">  <h3>Python Full Stack Developer</h3></a>
            <p>
                Explore Python programming, web development,
                database integration, and the fundamentals of
                building modern applications.
            </p>
            <a href="student" class="course-link">
                Enroll in Python →
            </a>
        </div>

        <div class="course-card">
            <div class="course-icon">💻</div>
            <h3>C# Full Stack Developer</h3>
            <p>
                Build your programming foundation with C#,
                .NET technologies, database concepts, and
                full-stack development fundamentals.
            </p>
            <a href="student" class="course-link">
                Enroll in C# →
            </a>
        </div>

    </div>
</section>

<!-- ABOUT -->
<section class="about" id="about">

    <div class="about-image" role="img"
         aria-label="Students collaborating and learning together"></div>

    <div class="about-content">
        <h2>About EduMaster</h2>

        <p>
            EduMaster is designed to help students develop
            technical knowledge and practical programming skills
            through structured learning paths.
        </p>

        <p>
            Whether you are starting your coding journey or
            strengthening your development skills, our course
            options help you focus on the technologies you want
            to learn.
        </p>

        <div class="benefit">✓ Career-focused learning paths</div>
        <div class="benefit">✓ Multiple programming courses</div>
        <div class="benefit">✓ Flexible preferred learning times</div>
        <div class="benefit">✓ Simple online enrollment</div>

        <a href="student" class="btn btn-primary">
            Join EduMaster →
        </a>
    </div>

</section>

<!-- WHY CHOOSE US -->
<section class="why-us">
    <div class="section-heading">
        <h2>Why Choose EduMaster?</h2>
        <p>Take a confident step toward your learning goals.</p>
        <div class="line"></div>
    </div>

    <div class="benefit-grid">

        <div class="benefit-card">
            <div class="icon">📚</div>
            <h3>Structured Learning</h3>
            <p>Explore clearly defined course paths for your technical learning journey.</p>
        </div>

        <div class="benefit-card">
            <div class="icon">💡</div>
            <h3>Practical Skills</h3>
            <p>Focus on programming concepts and application development fundamentals.</p>
        </div>

        <div class="benefit-card">
            <div class="icon">🕒</div>
            <h3>Flexible Timings</h3>
            <p>Select your preferred morning, afternoon, or evening learning schedule.</p>
        </div>

    </div>
</section>

<!-- CALL TO ACTION -->
<section class="cta">
    <h2>Your Learning Journey Starts Here!</h2>
    <p>Choose your course and take the first step toward your goals.</p>
    <a href="student" class="btn">
        Enroll Now 🎓
    </a>
</section>

<!-- CONTACT -->
<section class="contact" id="contact">
    <div class="section-heading">
        <h2>Contact Us</h2>
        <p>Have questions about enrollment or courses?</p>
        <div class="line"></div>
    </div>

    <p>🎓 EduMaster Student Enrollment</p>
    <p>📧 Email: <a href="mailto:support@edumaster.example">
        Contact EduMaster
    </a></p>
    <p>📍 Choose your city during student enrollment.</p>
</section>

<!-- FOOTER -->
<footer class="footer">
    <p>© 2026 EduMaster | Learn • Grow • Succeed</p>
    <p><a href="#home">Back to Top ↑</a></p>
</footer>

</body>
</html>
