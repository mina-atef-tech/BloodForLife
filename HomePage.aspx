<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Blood_For_Life.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BLOOD for life</title>
    <%--CSS--%>
    <link href="Bootstrap\css\bootstrap.css" rel="stylesheet" />
    <link href="Bootstrap\css\bootstrap.min.css" rel="stylesheet" />   
    <link href="bootstrap\css\Login.css" rel="stylesheet" />
    <%-------------------%>
    <link rel="icon" href='./Images/bb_logo(white).png' type="image/png"/>
    <link rel="stylesheet" href='index.css'/>
    <link rel="stylesheet" href='https://fontawesome.com/v4.7.0/icon/bars'/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
     <%--javascript--%>
    <script src="Blood For Life\Bootstrap\js\bootstrap.min.js"> </script>
     <%----------------%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
       <!--Spinner-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <!--Scroll to top button-->
<button onclick="topFunction()" id="myBtn" class="fas fa-arrow-up"></button>

<div class="preloader">
    <img src="pre-loader.svg" alt="spinner">
</div>

<!-- Home Page -->
<header>
    <video autoplay muted loop plays-inline id="homevideo">
        <source src="./video/homevideo1.mp4" type="video/mp4"/>
    </video>




    <!--navbar  -->
    <div id="logo"> <a href="indexmain.html"></a><img src="Images\logo.png"/></a>
    </div>
    <div id="nav">
        <div class="header-list" id="headerl">
            <i class="fa fa-times" onclick="hideMenu()"></i>
            <ul>
                <li><a class="scroll" href="#about-us">من نحن</a></li>
                <li><a href="help.html" target="_blank">تواصل معنا</a></li>
                <li><a class="scroll" href="#vol-sect">مساعدة </a></li>
                <li><a href="Register.html" target="_blank">سجل</a></li>
                <li><a href="indexmain.html">الرئيسية</a></li>
            </ul>
        </div>
        <i class="fa fa-bars" onclick="showMenu()"></i>
    </div>




    <div class="text-box">

        <h1>إبدأ معنا ..أنقذ حياة </h1>
        <p>شارك معنا كمتطوع أو مستفيد</p>
        <a href='Register.html' class="hero-btn" target="_blank">إنضم إلينا </a>
    </div>
    <div class="counter-container">
        <div class="counter-block">
            <h2>الحالات المستحقة</h2>
            <div class="counter" id="counter1">1300</div>
        </div>
        <div class="counter-block">
            <h2>الأكياس المتوفرة</h2>
            <div class="counter" id="counter2">850</div>
        </div>
        <div class="counter-block">
            <h2>طلبات معلقة</h2>
            <div class="counter" id="counter3">600</div>
        </div>
    </div>

</header>






<!--ABOUT US -->

<main>
    <section id="about-us">
        <div class="about">
            <h1 class="heading">من نحن وماذا نقدم ؟</h1> <br/>
            <p class="head-des text" >نحن نحل مشكلة طوارئ الدم <span class="one-line"><br/></span> عن طريق
                توصيل المحتاجين للدم مباشرة ببنك الدم </p>
            <div class="row">
                <div class="about-col">
                    <div class="image">
                        <img src="./Images/drop.png"/>
                    </div>
                    <h3>حملات تبرع</h3>
                    <p>
                        نقوم بتنظيم حملات تبرع بالدم تحت اشراف طبى كامل بهدف توفير احتياجات الحالات المستحقة
                    </p>
                </div>
                <div class="about-col">
                    <div class="image">
                        <img src="./Images/innovation.png"/>
                    </div>
                    <br/>
                    <h3>عيادات القلب</h3>
                    <p> صحة القلب هى بوابة التعافى من امراض الدم لذلك ننسق مع كبرى عيادات القلب لاحتواء الحالات التى
                        تعانى من امراض القلب
                        </p>

                </div>
                <div class="about-col">
                    <div class="image">
                        <img src="./Images/netwotk.png"/>
                    </div>
                    <h3>بنك الدم</h3>
                    <p>نقوم بالتنسيق المباشر بين الحالات المحتاجة للدم وبنوك الدم عبر توفير وسائل الاتصال مع شبكة
                        بنكوك الدم

                    </p>
                </div>
                <div class="about-col">
                    <div class="image">
                        <img src="./Images/noti.png"/>
                    </div>
                    <h3>تواصل دائم</h3>
                    <p> نبقى دائما على اتصال مع الحالات سواء المحتاجة للدم عبر التاكد من اكتمال الخدمة او الحالات
                        المتبرعة وذلك باجراء كافة التحاليل واطلاعهم عليها .

                        .</p>
                </div>
                <div class="about-col">
                    <div class="image">
                        <img src="./Images/cost.png"/>
                    </div>
                    <h3>مجانى تماما</h3>
                    <p>عملانا هو عمل تطوعى مجاى يهدف الى خدمة المواطنين بدون اى مقابل مادى

                    </p>
                </div>
                <div class="about-col">
                    <div class="image">
                        <img src="./Images/save.png"/>
                    </div>
                    <h3>طوارئ الدم</h3>
                    <p>نسعى دائما لتوفير خدمة الطوارئ مثل الحوادث و الحرائق لذلك نقوم بتوفير قناة اتصال دائمة بين
                        المواطنين وشبكة بنك الدم

                    </p>
                </div>
            </div>
        </div>
    </section>
</main>






<!-- health info -->

<div class="volunteer"  id="vol-sect">
    <div class="title-head">
        <h1 class="title">معلومات صحية </h1>
    </div>
    <p class="content">اليك جدول الية تبادل فصائل الدم
    </p>
    <img class="table" src="Images\table.jpg" alt=""/>
</div>





<!--REVIEW-->
<section class="customer-review">
    <div class="row-customer">
        <h2>اقتباسات طبية<br/>كن دائما مطلعا على أراء الاطباء</h2>
    </div>
    <div class="row-customer">
        <div class="col-customer span-1-of-3-customer customer-box">
            <div class="customer-text-box">
                نخن نحل مشكلة طوارئ الدم عن طريق توصيل المحتاجين للدم مباشرة ببنك الدم
            </div>
            <div class="customer">
                <img src="Images/review-3.PNG" alt="Customer photo"/>
                <p>؟؟؟؟؟؟</p>
            </div>
        </div>

        <div class="col-customer span-1-of-3-customer customer-box">
            <div class="customer-text-box">
                نخن نحل مشكلة طوارئ الدم عن طريق توصيل المحتاجين للدم مباشرة ببنك الدم
            </div>
            <div class="customer">
                <img src="Images/review-2.PNG" alt="Customer photo"/> 
                <p>؟؟؟؟؟؟</p>
            </div>
        </div>
        <div class="col-customer span-1-of-3-customer customer-box">
            <div class="customer-text-box">
                نخن نحل مشكلة طوارئ الدم عن طريق توصيل المحتاجين للدم مباشرة ببنك الدم
            </div>
            <div class="customer">
                <img src="Images/review-1.PNG" alt="Customer photo"/>
                <p>؟؟؟؟؟؟</p>
            </div>
        </div>
    </div>
</section>

<!--FOOTER-->

<footer>
    <div class="siteFooterBar">
        <div class="content1">
            <div class="foot">2021 © All rights reserved.</div>
        </div>
    </div>
    <h3> تواصل معنا عبر الوسائل الاتية </h3>

    <div class="footer-content">

        <div class="phone">أرقمنا 
            01026749293
            01026749293
        </div>
        <div class="email"> البريد الالكترونى
            deyaasalem@gmail.com
            deyaasalem@gmail.com
        </div>
        <div class="socials">
            <ul class="sci">
                <li><a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook"></i></a></li>
                <li><a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a></li>
            </ul>
        </div>
    </div>


</footer>








<!--Javascript for pre-loader-->

<script>
    const preloader = document.querySelector('.preloader');
    const fadeEffect = setInterval(() => {
        if (!preloader.style.opacity) {
            preloader.style.opacity = 1;
        }
        if (preloader.style.opacity > 0) {
            preloader.style.opacity -= 1.5;
        } else {
            clearInterval(fadeEffect);
        }
    }, 1500);
    window.addEventListener('load', fadeEffect);
</script>
<!--js for scroll to top-->
<script src="up.js"></script>

<!--JAVASCRIPT FOR TOGGLE MENU -->
<script>
    var headerl = document.getElementById("headerl");

    function showMenu() {
        headerl.style.right = "0";
    }

    function hideMenu() {
        headerl.style.right = "-210px";
    }
</script>


<!--js for scroll effects-->
<script src="scroll.js"></script>

<!--js for counter-->

<script>
    function incrementCounters() {
        document.getElementById('counter1').innerText = parseInt(document.getElementById('counter1').innerText) + 2;
        document.getElementById('counter2').innerText = parseInt(document.getElementById('counter2').innerText) + 1;
        document.getElementById('counter3').innerText = parseInt(document.getElementById('counter3').innerText) + 2;
    }

    // Start automatic incrementing every second
    setInterval(incrementCounters, 1000);
</script>


    </div>
    </form>
</body>
</html>
