<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Registration</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Ubuntu" rel="stylesheet">

    <!-- CSS Stylesheets -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="public/css/styles.css">

    <!-- Font Awesome -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <!-- Bootstrap Scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        .container{
            border: 1px solid black;
            padding: 2rem;
            margin-top: 4rem;
            margin-bottom: 2rem;
            background-color: antiquewhite;
            border-radius: 30px;
        }

        .content{
            margin-top: 0rem;

        }
        .name{
            width: 80%;
        }

        .contact{
            width: 39%;
            padding-top: 0;
        }

        .state{
            position: absolute;
            top: 115px;
            right: 7rem;
            width: 38%;
        }
        .label-state{
            position: absolute;
            top: 5rem;
            right: 31rem;
        }

        .input{
            width: 91%;
        }
        .back{
            position: absolute;
            top: 0;
            height: 110%;
            width: 100%;
            z-index: -1;
        }


    </style>
</head>

<body>

<img src="Agriculture.jpg" alt="" class="back">
<section id="title">
    <div class=" container-fluid">

        <div class="container">

            <div class="text-center content">
                <h2>Sign Up</h2>
            </div>
            <div class="col-lg-12 order-md-1">
                <form class="needs-validation" method="post" action="Registration">
                    <div class="row ">

                        <div class="col-md-6 col-lg-6 mb-3">
                            <label>First name</label>
                            <input type="text" class="form-control name" name="fname" required>


                        </div>
                        <div class="col-md-6 col-lg-6 mb-3">
                            <label>Last name</label>
                            <input type="text" class="form-control name" name="lname" required>
                        </div>
                    </div>


                    <div class="mb-3">
                        <label>Phone No.</label>
                        <input type="number" class="form-control contact" name="phone" placeholder="9999999999">

                        <label class="label-state">State</label>
                        <input type="text" class="form-control state" name="state">
                    </div>


                    <div class="mb-3">
                        <label>Email</label>
                        <input type="email" class="form-control input" name="email" placeholder="example@gmail.com">

                    </div>


                    <div class="mb-3">
                        <label >Username</label>
                        <input type="text" class="form-control input" name="uname" required>

                    </div>


                    <div class="mb-3">
                        <label >Password</label>
                        <input type="password" class="form-control input" name="pass" required>

                    </div>
                    <hr class="mb-4 input">
                    <div class="input">

                        <input type="Submit" value="Register" name="register" class="btn btn-primary btn-lg btn-block" >
                    </div>
                </form>
                <%

                String successMessage = (String) request.getAttribute("successMessage");


                if (successMessage != null && !successMessage.isEmpty()) {
                %>
                <div style="color: green; font-weight: bold;">
                    <%= successMessage %>
                </div>
                <%
                }
                %>
            </div>
        </div>

    </div>
    </div>
</section>
</body>

</html>
