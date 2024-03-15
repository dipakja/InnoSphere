<%-- 
    Document   : index
    Created on : 03-Feb-2024, 1:48:57 pm
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.tech.helper.ConnectionProvider" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <!--<link rel="stylesheet" href="./CSS/index.css">-->

    <style>
       body {
        font-family: 'Roboto', sans-serif;
            background-color: #edf3fd;

        }

        .navbar {
            /*background-color: #ee6e73;*/
        }

        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            /*background-color:#0f172a;*/
            padding-top: 20px;
            /*color: #325D79;*/
        }

    

        .sidebar a:hover {
            color: #3b82f6;
        }

/*        .content {
            margin-left: 250px;
            padding: 20px;
        }*/

        .banner-background {
           clip-path: polygon(25% 0%, 75% 0%, 100% 0, 100% 100%, 0 99%, 0 0);
        }
    
        /* Add this style for the responsive horizontal section */
        .custom-horizontal-section {
            display: flex;
            justify-content: center;
            align-items: flex-start;
         
            padding: 20px;
            margin-top: 0px; /* Adjust this margin based on your needs */
        }

        .custom-horizontal-section h1 {
            color: #F1F5F9;
            text-transform: uppercase;
            font-size: 28px;
        }
           .navbar-nav .nav-item:hover {
        background-color: #f0f0f0; /* Change this to the background color you desire */
        border-radius: 10px; /* Adjust the border-radius as needed */
    }

    </style>
</head>

<body>

<!-- <div class="custom-horizontal-section">
        <h1>MGM's COLLEGE OF ENGINEERING, NANDED</h1>
    </div>-->


    <%@include file="Navbar.jsp" %>    
    
<!-- Sidebar -->
<!--  <div class="sidebar">
         <a href="#"><span><img src="Images/DipakJadhav.jpg" alt="User Profile" width="60px;height:60px" style="border-radius: 40%;"></span></a>
        <a href="index.jsp" style="color:#3b82f6;"><span class="fa fa-home" ></span> Home</a>
        <a href="#"><span class="fa fa-rss"></span> Tech Blogs</a>
        <a href="#"><span class="fas fa-clipboard-list"></span> Category</a>
        <a href="Contact.jsp"><span class="far fa-address-book"></span> Contact</a>
        <a href="login.jsp"><span class="far fa-user-circle"></span> LogIn</a>
        <a href="register.jsp"><span class="fas fa-user-plus"></span> SignUp</a>
    </div>-->

    <!-- Content -->
    <div class="container-fluid mt-5">
       <div class="container-fluid p-0 m-0">
    <div class="jumbotron banner-background ">
        <div class="container " >
            <h1 class="display-2 fw-bold" style="color: #0F172A;">Develop Together, Shine Together:<br>
                                                        Your Social Coding Oasis!</h1>
            
            
            
            <p class="lead" style="color: #5f6a79;font-size: 1.7rem;">Embark on a collective coding journey in our oasis of collaboration. 
                                                    At DevHub, we believe in the power of shared expertise,  fostering a 
                                                  vibrant social coding community where developers unite, innovate, and shine together.</p>
           
  
<!-- Call-to-Action Buttons -->
<div class="text-center mt-4">
    <a href="login.jsp" class="btn btn-lg" style="background-color: #3B82F6; color: white; border-radius: 20px; transition: background-color 0.3s, transform 0.2s; display: inline-block;" 
    onmouseover="this.style.backgroundColor='#1E40AF'; this.style.transform='translateY(-3px)'" 
    onmouseout="this.style.backgroundColor='#3B82F6'; this.style.transform=''">
        <span class="text-white"><i class="fas fa-sign-in-alt"></i></span> &nbsp;&nbsp; Log In
    </a>

    &nbsp; &nbsp; &nbsp;

    <a href="register.jsp" class="btn btn-lg" style="background-color: #3B82F6; color: white; border-radius: 20px; transition: background-color 0.3s, transform 0.2s; display: inline-block;" 
    onmouseover="this.style.backgroundColor='#1E40AF'; this.style.transform='translateY(-3px)'" 
    onmouseout="this.style.backgroundColor='#3B82F6'; this.style.transform=''">
        <span class="text-white"><i class="fas fa-user-circle fa-1x"></i></span>&nbsp;&nbsp; Register
    </a>
</div>


        </div>
        <br><!-- spacing -->



        <br><!-- spacing -->

        <!-- Introduction Section -->
<div class="container" style="background-color: #ffffff; color: #0F172A; padding: 20px; border-radius: 10px;" id="About">
    <div class="row">
        <div class="col-md-8" style="overflow-y: auto;">
            <h2 class="display-4">Explore the Tech Wonderland!</h2>
            <br> 
            <br>
            <br>
            <div style="color:#475569;">
                <p class="lead" style="font-size:24px;">Welcome to our digital realm, where coding meets creativity, and innovation knows no bounds. At <span style="color: #3B82F6;" class="fw-bold">InnoSphere </span>, we curate the best blogs, offering you a front-row seat to the ever-evolving world of technology.</p>
                <br>
                <p class="lead" style="font-size:24px;">Here, you're not just a reader; you're a creator. Unleash your knowledge, share your experiences, and contribute to the collective wisdom of our tech-savvy community.</p>
                <br>
                <p class="lead" style="font-size:24px;">Why read when you can write? Dive into the art of documentation – the best way to learn. We provide a platform where your thoughts transform into insightful blogs. And the best part? It's all free!</p>
            </div>
        </div>
        <div class="col-md-4 mt-5">
            <!-- Add an eye-catching image related to your blog -->
            <img src="Images/blogs01.png" alt="Blog Image" class="img-fluid">
        </div>
    </div>
</div>

<br>

<!-- New Section -->
<div class="container mt-5" style="background-color: #F1F5F9; padding: 80px 0;">

    <div class="row justify-content-center">

        <!-- First Div -->
        <div class="col-md-4 rounded p-4 shadow" style="background-color: #ffffff; height: 400px; margin-right: 20px; transform: scale(1.1); position: relative; top: -80px;">
            <h2 class="text-primary font-weight-bold mb-4" style="font-size: 30px;">Write and Share</h2>
            <p class="text-muted" style="font-size: 20px;">Craft your thoughts, share your experiences, and contribute to the community by writing insightful posts and blogs. Unleash the power of your words!</p>
        </div>

        <!-- Second Div -->
        <div class="col-md-4 rounded p-4 shadow" style="background-color: #ffffff; height: 400px; margin-right: 60px; transform: scale(1.1); position: relative; top: -60px;">
            <h2 class="text-primary font-weight-bold mb-4" style="font-size: 30px;">Explore Categories</h2>
            <p class="text-muted" style="font-size: 20px;">Discover a wide range of categories covering all aspects of technology. Dive into the topics that interest you and stay updated with the latest trends and innovations.</p>
        </div>

        <!-- Third Div -->
        <div class="col-md-4 rounded p-4 shadow" style="background-color: #ffffff; height: 400px; transform: scale(1.1); position: relative; top: -40px; overflow-y: auto;">
            <h2 class="text-primary font-weight-bold mb-4" style="font-size: 30px;">Authentication & User Dashboard</h2>
            <p class="text-muted" style="font-size: 20px;">Secure your account with our authentication system and enjoy a personalized user dashboard. Manage your profile, track your posts, and engage with the community seamlessly.</p>
        </div>

    </div>

</div>

<!-- Benefits Section -->
<section class="container-fluid" style="padding: 50px 0;" id="Benefits">
    <div style="border-radius: 20px; overflow: hidden;">
        <h2 class="text-center mb-4" style="color: #5D5DFF;">Benefits</h2>
        <div class="row justify-content-center">
            <!-- Benefit Card 1 -->
            <div class="col-md-4 mb-4">
                <div class="card shadow rounded" style="height: 450px; overflow: hidden;">
                    <div class="moving-card">
                        <div class="card-title" style="height: 70px; border-radius: 20px 20px 0 0;">
                            <h4 class=" text-center mt-3" style="color:black;">Community Engagement</h4>
                        </div>
                        <div class="card-body" style="overflow-y: auto;">
                            <ul class="card-text text-muted mt-2" style="font-size: 21px; max-height: 300px; overflow-y: auto;">
                                <li class="mt-5" type="square">Connect with like-minded developers</li>
                                <li class="mt-5" type="square">Share insights and collaborate on projects</li>
                                <li class="mt-5" type="square">Engage in discussions and learn from peers</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Benefit Card 2 -->
            <div class="col-md-4 mb-4">
                <div class="card shadow rounded" style="height: 450px; overflow: hidden;">
                    <div class="moving-card">
                        <div class="card-title" style="height: 70px; border-radius: 20px 20px 0 0;">
                            <h4 class=" text-center mt-3" style="color:black;">Knowledge Sharing</h4>
                        </div>
                        <div class="card-body" style="overflow-y: auto;">
                            <ul class="card-text text-muted" style="font-size: 21px; max-height: 300px; overflow-y: auto;">
                                <li class="mt-5" type="square">Access a vast repository of articles and tutorials</li>
                                <li class="mt-5" type="square">Enhance coding skills and stay updated with trends</li>
                                <li class="mt-5" type="square">Learn from experts and share knowledge</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Benefit Card 3 -->
            <div class="col-md-4 mb-4">
                <div class="card shadow rounded" style="height: 450px; overflow: hidden;">
                    <div class="moving-card">
                        <div class="card-title" style="height: 70px; border-radius: 20px 20px 0 0;">
                            <h4 class=" text-center mt-3" style="color:black;">Networking Opportunities</h4>
                        </div>
                        <div class="card-body" style="overflow-y: auto;">
                            <ul class="card-text text-muted" style="font-size: 21px; max-height: 300px; overflow-y: auto;">
                                <li class="mt-5" type="square">Expand professional network and interact with experts</li>
                                <li class="mt-5" type="square">Explore job opportunities in the tech sector</li>
                                <li class="mt-5" type="square">Connect with potential collaborators or employers</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<!-- Accordion Section -->
<section class="container-fluid text-light" style="padding: 50px 0;background-color: #FFFFFF;border-radius: 20px; border: 2px solid #3b82f6;">
    <div>
        <div class="accordion" id="accordionExample">
            <div class="accordion-item mb-4">
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne" style="background-color: #ffffff; color: #3B82F6;font-size: 24px;">
                        How does it work?
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body" style="font-size:18px;">
           Our platform works by providing a space for like-minded individuals to connect and collaborate. You can join discussions, share your insights, and learn from others in the tech community. Whether you're a seasoned professional or just starting out, there's something for everyone to explore and contribute to.
                    </div>
                </div>
            </div>
            <div class="accordion-item mb-4">
                <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="background-color: #ffffff; color: #3B82F6; font-size: 24px;">
                        What benefits do I get?
                    </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                    <div class="accordion-body" style="font-size:18px;">
                 By joining our community, you gain access to a wealth of resources and opportunities. Expand your professional network, stay updated on industry trends, and explore new career paths. Engage in meaningful discussions, showcase your expertise, and receive recognition for your contributions. Our platform empowers you to grow personally and professionally in the ever-evolving world of technology.
                    </div>
                </div>
            </div>
            <div class="accordion-item mb-4">
                <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="background-color: #ffffff; color: #3B82F6; font-size: 24px;">
                        How can I get started?
                    </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                    <div class="accordion-body" style="font-size:18px;">
                    Getting started is easy! Simply sign up for an account, create your profile, and start exploring. Dive into discussions, browse through articles and tutorials, and connect with fellow members. Whether you're looking to learn, share, or collaborate, our platform provides the tools and community support you need to thrive in the tech industry.
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<br><!-- space  -->
<!--footer section-->
<footer class="text-center text-lg-start py-5 mt-5" style="background-color: #F1F5F9; border-radius: 20px; box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);" id="FAQ">
    <div class="container">
        <div class="row">
            <!-- About Me -->
            <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">About Me</h5>
                <p class="text-muted">I am a Full stack Web developer and Third year Engineering Student.</p>
            </div>
            <!-- Contact -->
            <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">Contact</h5>
                <p class="text-muted">Email: dipakja01@gmail.com<br>Phone: +918767421633</p>
            </div>
            <!-- GitHub -->
            <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">GitHub</h5>
                <a href="https://github.com/dipakja" target="blank" class="text-muted"><i class="fab fa-github"></i> GitHub Profile</a>
            </div>
            <!-- Copyright -->
            <div class="col-12 mt-5">
                <p class="text-muted">© 2024 dipakJadhav. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>







    <!-- Scripts -->
    <script src="https://kit.fontawesome.com/7c992a4c91.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <!-- Compiled and minified JavaScript -->
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>-->
    <script src="Js/index.js" type="text/javascript"></script>

</body>

</html>
