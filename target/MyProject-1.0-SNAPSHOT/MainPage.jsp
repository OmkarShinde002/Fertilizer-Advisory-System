<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="styles.css">

    <!-- External css links -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- External scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Document</title>
    <style>
        .icon{
            width: 200px;
            float: left;
            height: 70px;
        }
        .logo{
            color: #fff;
            font-size: 50px;
            font-family: sans-serif;
            padding-left: 20px;
            float: left;
            padding-top: 10px;
        }
        .menu{
            width: 400px;
            float: left;
            height: 70px;
        }
        .menu ul{
            float: left;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .menu ul li{
            list-style: none;
            margin-left: 62px;
            margin-top: 27px;
            font-size: 14px;
        }
        .menu ul li a{
            text-decoration: none;
            color: #fff;
            font-family: Arial;
            font-weight: bold;
            transition: 0.1s ease-in-out;
        }
        .menu ul li a:hover{
            color: #000;
        }
        .search{
            width: 330px;
            float: left;
            margin-left: 270px;
        }
        .srch{
            font-family: 'Times New Roman';
            width: 200px;
            height: 40px;
            background: transparent;
            border: solid limegreen;
            margin-top: 13px;
            color: #fff;
            border-right: none;
            font-size: 16px;
            float: left;
            padding: 10px;
            border-bottom-left-radius: 5px;
            border-top-left-radius: 5px;
        }
        .btn{
            width: 100px;
            height: 40px;
            background: limegreen;
            border: 2px limegreen;
            margin-top: 13px;
            color: #fff;
            font-size: 15px;
            border-bottom-right-radius: 5px;
            border-bottom-right-radius: 5px;
        }
        .btn:focus{
            outline: none;
        }
        .srch:focus{
            outline: none;
        }

        .content h1{
            font-family: 'Times New Roman';
            font-size: 50px;
            padding-left: 20px;
            margin-top: 2%;
            letter-spacing: 2px;
        }

        .content .cn a{
            text-decoration: none;
            color: #000;
            transition: .3s ease;
        }
        .content .cn a:hover{
            text-decoration: none;
            color: #000;
            transition: .3s ease;
        }

        .content span{
            color: #fff;
            font-size: 60px;
        }

        .btn1{
            height: 5rem;
            width: 28rem;
            position: absolute;
            margin-left: 20%;
            margin-top: 8rem;


        }
        .btn2{
            height: 5rem;
            width: 28rem;
            margin-top: 8rem;

        }

        .vid{
            text-align: center;
        }
    </style>
</head>
<body>
<!-- navbar -->
<img src="Agriculture.jpg" style="position: absolute; z-index: -1; filter: brightness(50%); width: 100%; height: 130%;"  alt="">

<div class="navbar" style="width: 100%; margin-bottom: 4rem;">
    <div class="icon">
        <h1 class="logo">FAS</h1>

        </div>

    <div class="menu" style="margin-left: 7rem">
        <ul>
            <li><a href="MainPage.jsp">HOME</a></li>
            <li><a href="Calculation.jsp">CALCULATE</a></li>
            <li><a href="Complaint.jsp">HELP</a></li>
            <li><a href="index.jsp">EXIT</a></li>
        </ul>

    </div>
    <div class="search" style="margin-left: 25rem">
        <input class="srch" type="search" name="" placeholder="Type to text">
        <a href="#"><button class="btn" style="background-color: limegreen">Search</button></a>
    </div>
</div>

<!-- videos -->

<section id="body">
    <div class="row">
        <div class="col-lg-4 main-box vid">
            <video width="460" height="260" autoplay muted loop style="border-radius: 2rem;">
                <source src="video1.mp4" type="video/mp4">
            </video>
            <button class= "btn btn-light btn-lg" id="video1">Full Video</button>
        </div>
        <div class="col-lg-4 main-box vid">
            <video width="460" height="260" autoplay muted loop style="border-radius: 2rem;">
                <source src="video2.mp4" type="video/mp4">
            </video>
            <button class="btn btn-light btn-lg" id="video2">Full Video</button>
        </div>
        <div class="col-lg-4 main-box vid">
            <video width="460" height="260" autoplay muted loop style="border-radius: 2rem;">
                <source src="Video3.mp4" type="video/mp4">
            </video>
            <button class="btn btn-light btn-lg" id="video3">Full Video</button>
        </div>
    </div>
</section>

<!-- big buttons -->

<section id="button">
    <div class="row">
        <div class="col-lg-6 ">
            <a href="Calculation.jsp">
                <button class="btn btn-outline-light btn-lg btn1">Fertilizer Calculation</button>
            </a>
        </div>
        <div class="col-lg-6">
            <a href="Complaint.jsp">
                <button class="btn btn-outline-light btn-lg btn2">Get Help</button>
            </a>
        </div>
    </div>
</section>

<!-- javascript -->

<script>
    var first = document.getElementById("video1");
    var second = document.getElementById("video2");
    var third = document.getElementById("video3");
    var url1 = "https://www.youtube.com/watch?v=7_JUYbHQXb8";
    var url2 = "https://www.youtube.com/watch?v=B4dgtPwsiII";
    var url3 = "https://www.youtube.com/watch?v=ges3SfMvd-o";

    first.onclick = function(){
        window.open(url1,"_blank").focus();
    }

    second.onclick = function(){
        window.open(url2,"_blank").focus();
    }

    third.onclick = function(){
        window.open(url3,"_blank").focus();
    }

</script>
</body>
</html>