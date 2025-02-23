<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- External scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        .container{
            border: 1px solid black;
            text-align: center;
            margin-top: 1rem;
            width: 50%;
            border-radius: 15px;
            position: absolute;
            margin-left: 25%;
            height: fit-content;
            background-color: #739072;
        }

        .fields{
            padding: 1rem;
        }
        .lab1{
            margin-right: 32rem;
            padding-bottom: 10px;
        }

        .label{
            margin-right: 84%;
        }


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

    </style>
</head>
<body>
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
<div class="container">
    <div class="fields">
        <h1>Fertilizer Calculation</h1>
        <hr>
    </div>
    <form action="Calculation" method="post">
        <div class="fields">
            <label class="form-label label">Select Crop</label>
            <select name="crops" id="" class="form-select" aria-label="Default select example" required>
                <option value="Tomatoes">Tomatoes</option>
                <option value="BlueBerries">BlueBerries</option>
                <option value="Carrots">Carrots</option>
                <option value="Potatoes">Potatoes</option>
                <option value="Wheat">Wheat</option>
                <option value="Lettuce">Lettuce</option>
                <option value="Rice">Rice</option>
                <option value="Soyabean">Soyabean</option>
                <option value="Cotton">Cotton</option>
                <option value="Strawberries">Strawberries</option>
            </select>

        </div>
        <div class="fields">
            <label class="lab1" >Enter the Area of Field in Guntha</label><br>
            <input type="number" name="Area"  class="form-control" required>
        </div>
        <div class="fields">
            <label style="margin-right: 35rem; padding: 1rem">Type of Soil</label>
            <select name="Soil" class="form-select" aria-label="Default select example" required>
                <option value="Clayey">Clayey</option>
                <option value="Sandy">Sandy</option>
                <option value="Loamy">Loamy</option>
            </select>
        </div>

        <button class="btn btn-lg btn-primary " style="margin-top: 2rem; margin-bottom: 3rem; width: 7rem" type="submit" name="Calculation"><b>CALCULATE</b></button>
        <%
            String userID = (String) session.getAttribute("user_id");
        %>
        <a href="ViewCalculation.jsp?u=<%=userID%>" class="btn btn-lg btn-primary" style="width: 11rem; margin-bottom: 2rem; margin-left: 3rem"><b>View Calculations</b></a>
    </form>
</div>
</body>
</html>