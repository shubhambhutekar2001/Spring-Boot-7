<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>EduMaster - Home & Courses</title>

<style>
/* GENERAL CSS */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Arial, sans-serif;
    scroll-behavior: smooth;
}

/* GLOBAL BACKGROUND IMAGE */
body {
    min-height: 100vh;
    padding-top: 85px;

    background:
        linear-gradient(
            rgba(35, 25, 80, 0.65),
            rgba(75, 45, 130, 0.70)
        ),
        url("https://images.unsplash.com/photo-1523050854058-8df90110c9f1?auto=format&fit=crop&w=1920&q=85");

    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    color: #33334d;
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

.nav-links .explore-btn {
    padding: 11px 22px;
    color: white;
    background: linear-gradient(135deg, #667eea, #764ba2);
    border-radius: 25px;
}

.nav-links .explore-btn:hover {
    color: white;
    transform: translateY(-2px);
}

/* CONTENT CONTAINER WRAPPER */
.main-wrapper {
    width: 90%;
    max-width: 950px;
    margin: 30px auto;
    display: flex;
    flex-direction: column;
    gap: 40px;
}

/* GENERIC SECTION CARDS */
.section-card {
    background: rgba(255, 255, 255, 0.96);
    padding: 40px;
    border-radius: 22px;
    box-shadow: 0 20px 50px rgba(25, 20, 70, 0.3);
}

/* HERO SECTION */
.hero-section {
    text-align: center;
    padding: 30px 10px;
}

.badge-pill {
    display: inline-block;
    padding: 6px 16px;
    background: #f0edff;
    color: #6741b5;
    border-radius: 20px;
    font-size: 13px;
    font-weight: 600;
    margin-bottom: 15px;
}

.hero-section h1 {
    color: #493a92;
    font-size: 38px;
    margin-bottom: 15px;
}

.hero-section p {
    color: #555;
    font-size: 16px;
    line-height: 1.6;
    max-width: 680px;
    margin: 0 auto 25px auto;
}

.hero-buttons {
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
}

.primary-btn {
    display: inline-block;
    padding: 13px 28px;
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white;
    text-decoration: none;
    font-weight: 700;
    border-radius: 25px;
    box-shadow: 0 7px 18px rgba(102, 90, 190, 0.3);
    transition: 0.3s;
}

.primary-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 12px 25px rgba(102, 90, 190, 0.4);
    color: white;
}

.secondary-btn {
    display: inline-block;
    padding: 13px 28px;
    background: transparent;
    color: #6741b5;
    border: 2px solid #6741b5;
    text-decoration: none;
    font-weight: 700;
    border-radius: 25px;
    transition: 0.3s;
}

.secondary-btn:hover {
    background: #f0edff;
}

/* COURSES SECTION */
.section-title {
    text-align: center;
    color: #493a92;
    font-size: 28px;
    margin-bottom: 10px;
}

.section-subtitle {
    text-align: center;
    color: #777;
    font-size: 14px;
    margin-bottom: 25px;
}

.courses-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    gap: 20px;
}

.course-box {
    background: #faf9ff;
    border: 1.5px solid #dedcf0;
    padding: 25px;
    border-radius: 16px;
    transition: 0.3s;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.course-box:hover {
    border-color: #7965df;
    transform: translateY(-3px);
    box-shadow: 0 8px 20px rgba(121, 101, 223, 0.12);
}

.course-icon {
    font-size: 32px;
    margin-bottom: 12px;
}

.course-box h3 {
    color: #33334d;
    font-size: 18px;
    margin-bottom: 10px;
}

.course-box p {
    color: #666;
    font-size: 13px;
    line-height: 1.5;
    margin-bottom: 15px;
}

.tech-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
    margin-bottom: 20px;
}

.tech-badge {
    background: #f0edff;
    color: #6741b5;
    padding: 3px 10px;
    border-radius: 10px;
    font-size: 11px;
    font-weight: 600;
}

/* ABOUT SECTION */
.about-content p {
    color: #555;
    font-size: 14px;
    line-height: 1.6;
    margin-bottom: 15px;
    text-align: center;
}

.features-list {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 15px;
    margin-top: 20px;
}

.feature-tag {
    background: #f0edff;
    color: #6741b5;
    padding: 8px 16px;
    border-radius: 20px;
    font-size: 13px;
    font-weight: 600;
}

/* WHY CHOOSE US SECTION */
.why-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 20px;
    margin-top: 20px;
}

.why-card {
    background: #faf9ff;
    border: 1.5px solid #dedcf0;
    padding: 22px;
    border-radius: 16px;
    text-align: center;
}

.why-icon {
    font-size: 30px;
    margin-bottom: 10px;
}

.why-card h4 {
    color: #33334d;
    font-size: 16px;
    margin-bottom: 8px;
}

.why-card p {
    color: #666;
    font-size: 13px;
    line-height: 1.4;
}

/* CONTACT BOX */
.contact-info {
    text-align: center;
    background: #faf9ff;
    border: 1.5px solid #dedcf0;
    padding: 25px;
    border-radius: 14px;
    margin-top: 10px;
}

.contact-info p {
    color: #555;
    font-size: 14px;
    margin-bottom: 5px;
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

    .nav-links .explore-btn {
        padding: 9px 15px;
    }

    body {
        padding-top: 130px;
        background-attachment: scroll;
    }

    .section-card {
        padding: 25px 20px;
    }

    .hero-section h1 {
        font-size: 28px;
    }
}
</style>
</head>

<body>

<!-- TOP NAVBAR -->
<nav class="navbar">
    <a href="#home" class="logo">🎓 EduMaster</a>
    <div class="nav-links">
        <a href="home">Home</a>
        <a href="courses">Courses</a>
        <a href="#about">About</a>
        <a href="#why-us">Why Us</a>
        <a href="#contact">Contact</a>
        <a href="courses" class="explore-btn">Explore →</a>
    </div>
</nav>

<!-- MAIN WRAPPER FOR ALL SECTIONS -->
<div class="main-wrapper">

    <!-- HOME / HERO SECTION -->
    <section class="section-card hero-section" id="home">
        <span class="badge-pill">🎓 Learn Today, Lead Tomorrow</span>
        <h1>Build Your Future With EduMaster</h1>
        <p>Discover your potential with industry-focused courses. Develop practical skills, learn from structured training, and take the next step toward your dream career.</p>
        <div class="hero-buttons">
            <a href="#courses" class="primary-btn">Explore Courses →</a>
            <a href="#about" class="secondary-btn">Learn More</a>
        </div>
    </section>

    <!-- COURSES SECTION WITH DETAILED INFORMATION -->
    <section class="section-card" id="courses">
        <h2 class="section-title">Explore Our Courses</h2>
        <p class="section-subtitle">Choose a comprehensive learning path tailored for your career goals.</p>
        
        <div class="courses-grid">
            <!-- Java Course -->
            <div class="course-box">
                <div>
                    <div class="course-icon">☕</div>
                    <h3>Java Full Stack Developer</h3>
                    <p>Master enterprise-level backend development with Spring Boot, object-oriented concepts, and robust database management.</p>
                    <div class="tech-tags">
                        <span class="tech-badge">Java</span>
                        <span class="tech-badge">Spring Boot</span>
                        <span class="tech-badge">SQL</span>
                        <span class="tech-badge">REST APIs</span>
                    </div>
                </div>
            </div>

            <!-- Python Course -->
            <div class="course-box">
                <div>
                    <div class="course-icon">🐍</div>
                   <a href="https://www.w3schools.com/python/"> <h3>Python Full Stack Developer</h3></a>
                    <p>Learn core Python programming, modern web frameworks like Django/Flask, and dynamic database connectivity.</p>
                    <div class="tech-tags">
                        <span class="tech-badge">Python</span>
                        <span class="tech-badge">Django</span>
                        <span class="tech-badge">Database</span>
                        <span class="tech-badge">HTML/CSS</span>
                    </div>
                </div>
            </div>

            <!-- C# Course -->
            <div class="course-box">
                <div>
                    <div class="course-icon">💻</div>
                    <h3>C# Full Stack Developer</h3>
                    <p>Build powerful desktop and web applications utilizing the .NET ecosystem, C# programming, and relational databases.</p>
                    <div class="tech-tags">
                        <span class="tech-badge">C#</span>
                        <span class="tech-badge">.NET Core</span>
                        <span class="tech-badge">SQL Server</span>
                        <span class="tech-badge">Entity Framework</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ABOUT SECTION -->
    <section class="section-card about-content" id="about">
        <h2 class="section-title">About EduMaster</h2>
        <p class="section-subtitle">Empowering learners with real-world technical skills.</p>
        
        <p>EduMaster is designed to help students develop technical knowledge and practical programming skills through structured learning paths. Whether you are starting your coding journey or strengthening your development skills, our course options help you focus on the technologies you want to master.</p>
        
        <div class="features-list">
            <span class="feature-tag">✓ Career-focused learning paths</span>
            <span class="feature-tag">✓ Multiple programming courses</span>
            <span class="feature-tag">✓ Flexible preferred learning times</span>
            <span class="feature-tag">✓ Comprehensive training</span>
        </div>
    </section>

    <!-- WHY CHOOSE US SECTION -->
    <section class="section-card" id="why-us">
        <h2 class="section-title">Why Choose EduMaster?</h2>
        <p class="section-subtitle">Take a confident step toward your learning goals.</p>

        <div class="why-grid">
            <div class="why-card">
                <div class="why-icon">📚</div>
                <h4>Structured Learning</h4>
                <p>Explore clearly defined course paths tailored for your technical learning journey.</p>
            </div>

            <div class="why-card">
                <div class="why-icon">💡</div>
                <h4>Practical Skills</h4>
                <p>Focus on essential programming concepts and application development fundamentals.</p>
            </div>

            <div class="why-card">
                <div class="why-icon">🕒</div>
                <h4>Flexible Timings</h4>
                <p>Select your preferred morning, afternoon, or evening learning schedule.</p>
            </div>
        </div>

        <!-- CONTACT DETAILS -->
        <div class="contact-info" id="contact">
            <h4 style="color: #493a92; margin-bottom: 8px;">Contact Us</h4>
            <p>Have questions about courses or training schedules?</p>
            <p>📧 Email Support: support@edumaster.com</p>
            <p>📍 Available across Pune, Delhi, and Hyderabad</p>
        </div>

        <div class="footer">
            © 2026 EduMaster | Learn • Grow • Succeed
        </div>
    </section>

</div>

</body>
</html>