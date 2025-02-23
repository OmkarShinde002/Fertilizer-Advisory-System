<%--
  Created by IntelliJ IDEA.
  User: Jerry Carter
  Date: 18-11-2023
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>

<html>
<head>
    <title>Fertilizer Suggestion</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>

        *{
            margin: 0;
            padding: 0;
        }
        .container{
            border: 1px solid black;
            margin-top: 1rem;
            width: 50%;
            border-radius: 15px;
            position: absolute;
            margin-left: 25%;
            height: fit-content;
            background-color: #739072;
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
<img src="Agriculture.jpg" style="position: absolute; z-index: -1; filter: brightness(50%); width: 100%; height: 130%; top: 0"  alt="">

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
    <div style="text-align: center"><h1>FERTILIZER SUGGESTION</h1></div>
    <hr>
</div>
    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MyProject", "root", "admin");
            System.out.println("connected");

            String userID = (String) session.getAttribute("user_id");
            System.out.println("UserID"+ userID);

            HttpSession session1=request.getSession();
            int cropID = (Integer) session1.getAttribute("crop_id");
            System.out.println("CropID"+cropID);

            PreparedStatement ps = con.prepareStatement("SELECT * FROM Calculation WHERE crop_id = ?; ");
            ps.setInt(1, cropID);
            ResultSet rs1 = ps.executeQuery();
            String name=null,soil=null,fert=null,pH=null,des=null;
            float area=0.0f,amt=0.0f,per=0.0f;

            if (rs1.next()) {
                name = rs1.getString("crop_name");
                area = rs1.getInt("area");
                soil = rs1.getString("Soil_type");


                if ("Tomatoes".equals(name) && "Clayey".equals(soil)) {
                    des="Clayey soil retains water, making it prone to compaction. Proper drainage is essential.";
                    fert = "Use a fertilizer with a lower nitrogen ratio, such as N-5% P-10% K-10%, to avoid excessive foliage growth. Add organic matter to enhance soil structure";
                    pH = "pH 6.0-6.8";
                    per= 2.0f;

                } else if ("Tomatoes".equals(name) && "Sandy".equals(soil)) {
                    des="Sandy soil drains quickly, requiring more frequent irrigation.";
                    fert = "Use a balanced fertilizer like N-10% P-10% K-10%, as nutrients leach faster in sandy soil. Supplement with organic matter to improve water retention.";
                    pH = "pH 6.0-6.8";
                    per= 2.5f;

                } else if ("Tomatoes".equals(name) && "Loamy".equals(soil)) {
                    des="Loamy soil is well-balanced, providing good drainage and water retention.";
                    fert = "A balanced fertilizer such as N-10% P-10% K-10% is suitable. Adjust quantities based on soil test results for optimal nutrient levels.";
                    pH = "pH 6.0-6.8";
                    per= 2.5f;

                } else if ("BlueBerries".equals(name) && "Clayey".equals(soil)) {
                    des="Clayey soil retains water, making it prone to compaction. Proper drainage is essential.";
                    fert="Acidic fertilizer with organic matter, such as N-4% P-8% K-4%.";
                    pH="pH 4.0-5.0";
                    per= 2.0f;

                }else if ("BlueBerries".equals(name) && "Sandy".equals(soil)) {
                    des="Sandy soil drains quickly, requiring more frequent irrigation.";
                    fert="Acidic fertilizer like N-4% P-8% K-4%, rich in organic matter.";
                    pH="pH 4.0-5.0";
                    per= 2.0f;

                }else if ("BlueBerries".equals(name) && "Loamy".equals(soil)) {
                    des="Loamy soil is well-balanced, providing good drainage and water retention.";
                    fert="Balanced fertilizer with a slightly higher acidic component, like N-10% P-10% K-10%.";
                    pH="pH 4.0-5.0";
                    per= 3.0f;

                } else if ("Carrots".equals(name) && "Clayey".equals(soil)) {
                    des="Clayey soil retains water, making it prone to compaction. Proper drainage is essential.";
                    fert="Balanced fertilizer with slightly lower nitrogen, like N-5% P-10% K-10%.";
                    pH="pH 5.8-7.0";
                    per= 2.0f;

                }else if ("Carrots".equals(name) && "Sandy".equals(soil)) {
                    des="Sandy soil drains quickly, requiring more frequent irrigation.";
                    fert="Phosphorus-rich fertilizer like N-10% P-20% K-20%.";
                    pH="pH 5.8-7.0";
                    per= 3.5f;

                }else if ("Carrots".equals(name) && "Loamy".equals(soil)) {
                    des="Loamy soil is well-balanced, providing good drainage and water retention.";
                    fert="Balanced fertilizer with micronutrients, like N-10% P-10% K-10%.";
                    pH="pH 5.8-7.0";
                    per= 3.0f;

                }else if ("Potatoes".equals(name) && "Clayey".equals(soil)) {
                    des="Clayey soil retains water, making it prone to compaction. Proper drainage is essential.";
                    fert="Balanced fertilizer with slightly lower nitrogen, like N-5% P-10% K-10%.";
                    pH="pH 4.8-6.5";
                    per= 2.0f;

                }else if ("Potatoes".equals(name) && "Sandy".equals(soil)) {
                    des="Sandy soil drains quickly, requiring more frequent irrigation.";
                    fert="Potassium-rich fertilizer like N-8% P-24% K-24%.";
                    pH="pH 4.8-6.5";
                    per= 3.5f;

                }else if ("Potatoes".equals(name) && "Loamy".equals(soil)) {
                    des="Loamy soil is well-balanced, providing good drainage and water retention.";
                    fert="Balanced fertilizer with emphasis on potassium, like N-5% P-10% K-10%.";
                    pH="pH 4.8-6.5";
                    per= 3.0f;

                }else if ("Wheat".equals(name) && "Clayey".equals(soil)) {
                    des="Clayey soil retains water, making it prone to compaction. Proper drainage is essential.";
                    fert="Balanced fertilizer with slightly lower nitrogen, like N-10% P-20% K-20%.";
                    pH="pH 6.0-7.5";
                    per= 4.0f;

                }else if ("Wheat".equals(name) && "Sandy".equals(soil)) {
                    des="Sandy soil drains quickly, requiring more frequent irrigation.";
                    fert="Nitrogen-rich fertilizer like N-30% P-15% K-15%.";
                    pH="pH 6.0-7.5";
                    per= 4.0f;

                }else if ("Wheat".equals(name) && "Loamy".equals(soil)) {
                    des="Loamy soil is well-balanced, providing good drainage and water retention.";
                    fert="Balanced fertilizer with emphasis on nitrogen, like N-30% P-15% K-15%.";
                    pH="pH 6.0-7.5";
                    per= 4.0f;

                }else if ("Lettuce".equals(name) && "Clayey".equals(soil)) {
                    des="Clayey soil retains water, making it prone to compaction. Proper drainage is essential.";
                    fert="Balanced fertilizer with micronutrients, like N-10% P-10% K-10%.";
                    pH="pH 6.0-7.0";
                    per= 2.5f;

                }else if ("Lettuce".equals(name) && "Sandy".equals(soil)) {
                    des="Sandy soil drains quickly, requiring more frequent irrigation.";
                    fert="Balanced fertilizer with micronutrients, like N-10% P-10% K-10%.";
                    pH="pH 6.0-7.0";
                    per= 2.5f;

                }else if ("Lettuce".equals(name) && "Loamy".equals(soil)) {
                    des="Loamy soil is well-balanced, providing good drainage and water retention.";
                    fert="Balanced fertilizer with micronutrients, like N-10% P-10% K-10%.";
                    pH="pH 6.0-7.0";
                    per= 2.5f;

                }else if ("Rice".equals(name) && "Clayey".equals(soil)) {
                    des="Clayey soil retains water, making it prone to compaction. Proper drainage is essential.";
                    fert="Balanced fertilizer with emphasis on nitrogen, like N-10% P-10% K-10%";
                    pH="pH 6.0-7.5";
                    per= 2.5f;

                }else if ("Rice".equals(name) && "Sandy".equals(soil)) {
                    des="Sandy soil drains quickly, requiring more frequent irrigation.";
                    fert="Nitrogen-rich fertilizer like N-20% P-10% K-10%";
                    pH="pH 6.0-7.5";
                    per= 2.5f;

                }else if ("Rice".equals(name) && "Loamy".equals(soil)) {
                    des="Loamy soil is well-balanced, providing good drainage and water retention.";
                    fert="Balanced fertilizer with emphasis on nitrogen, like N-15% P-10% K-10%";
                    pH="pH 6.0-7.5";
                    per= 2.5f;

                }else if ("Soyabean".equals(name) && "Clayey".equals(soil)) {
                    des="Clayey soil retains water, making it prone to compaction. Proper drainage is essential.";
                    fert="Balanced fertilizer with slightly lower nitrogen, like N-5% P-10% K-10%";
                    pH="pH 6.0-6.8";
                    per= 2.5f;

                }else if ("Soyabean".equals(name) && "Sandy".equals(soil)) {
                    des="Sandy soil drains quickly, requiring more frequent irrigation.";
                    fert="Phosphorus-rich fertilizer like N-20% P-20% K-0%.";
                    pH="pH 6.0-6.8";
                    per= 3.5f;

                }else if ("Soyabean".equals(name) && "Loamy".equals(soil)) {
                    des="Loamy soil is well-balanced, providing good drainage and water retention.";
                    fert="Balanced fertilizer with micronutrients, like N-10% P-10% K-10%";
                    pH="pH 6.0-6.8";
                    per= 2.0f;

                }else if ("Cotton".equals(name) && "Clayey".equals(soil)) {
                    des="Clayey soil retains water, making it prone to compaction. Proper drainage is essential.";
                    fert="Balanced fertilizer with slightly lower nitrogen, like N-8% P-16% K-16%.";
                    pH="pH 5.5-7.0";
                    per= 2.5f;

                }else if ("Cotton".equals(name) && "Sandy".equals(soil)) {
                    des="Sandy soil drains quickly, requiring more frequent irrigation.";
                    fert="Phosphorus-rich fertilizer like N-10% P-20% K-10%";
                    pH="pH 5.5-7.0";
                    per= 3.5f;

                }else if ("Cotton".equals(name) && "Loamy".equals(soil)) {
                    des="Loamy soil is well-balanced, providing good drainage and water retention.";
                    fert="Balanced fertilizer with slightly higher potassium, N-10% P-20% K-10%.";
                    pH="pH 5.5-7.0";
                    per= 3.0f;

                }else if ("Strawberries".equals(name) && "Clayey".equals(soil)) {
                    des="Clayey soil retains water, making it prone to compaction. Proper drainage is essential.";
                    fert="Balanced fertilizer with micronutrients, like N-10% P-10% K-10%.";
                    pH="pH 5.5-6.5";
                    per= 2.5f;

                }else if ("Strawberries".equals(name) && "Sandy".equals(soil)) {
                    des="Sandy soil drains quickly, requiring more frequent irrigation.";
                    fert="Balanced fertilizer with micronutrients, like N-10% P-10% K-10%.";
                    pH="pH 5.5-6.5";
                    per= 2.5f;

                }else if ("Strawberries".equals(name) && "Loamy".equals(soil)) {
                    des="Loamy soil is well-balanced, providing good drainage and water retention.";
                    fert="Balanced fertilizer with micronutrients, like N-10% P-10% K-10%.";
                    pH="pH 5.5-6.5";
                    per= 2.5f;

                }
            }
            amt=area*per;
    %>


<div style="margin-top: 15rem;">
    <table class="table table-hover text-center" style="background-color: #739072;">
    <tr>
        <th>&nbsp;</th>
        <th>&nbsp;</th>
    </tr>
        <tr>
            <td><b>CROP NAME:</b></td>
            <td><b><% out.println(name); %></b></td>
        </tr>
        <tr>
            <td><b>Area:</b></td>
            <td><b><% out.println(area + " Guntha"); %></b></td>
        </tr>
        <tr>
            <td><b>SOIL TYPE:</b></td>
            <td><b><% out.println(soil); %></b></td>
        </tr>
        <tr>
            <td><b>CROP DESCRIPTION:</b></td>
            <td><b><% out.println(des); %></b></td>
        </tr>
        <tr>
            <td><b>Expected pH of Soil:</b></td>
            <td><b><% out.println(pH); %></b></td>
        </tr>
        <tr>
            <td><b>FERTILIZER:</b></td>
            <td><b><% out.println(fert); %></b></td>
        </tr>
        <tr>
            <td><b>QUANTITY:</b></td>
            <td><b><% out.println(amt + " kg"); %></b></td>
        </tr>

      <%  }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    %>
    </table>
</div>
</body>
</html>
