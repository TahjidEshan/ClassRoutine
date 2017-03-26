<!Doctype html>
<html>
    <head>
        <title>EXAM CREATION</title>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
        <link rel="stylesheet" type="text/css" href="Style.css"/>
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            $(document).ready(function () {
                $("#startdatepicker").datepicker();
                $("#enddatepicker").datepicker();
            });
        </script>
    </head>
    <body>
        <div class="container-fluid whole">
            <div class="col-sm-12" id="head">
                <div class="col-sm-1"><img class="img-responsive" src="jb_logo.png" alt="LOGO"></div>
                <div class="col-sm-6"><h3> <b>Ibrahimpur Salahuddin Shikhyalaya </b></h3></div>
                <hr><br>
                <div class="col-sm-10" id="address" style="margin-left:130px; "><h5><b> East Sheorapara, Mirpur, Dhaka-1216 </b></h5></div>
                <div class="col-sm-10" id="address1"><h5><b> Schedule Management System</b></h5></div>
            </div>
            <div class="thin-black-border" style="margin-top: 150px">
                <h3  class="thin-black-border" style="align-self: center;text-align: center;">Add New Examination</h3>
                <form name="Exam" action = "exam.php" method="post" style="text-align: center; margin-top: 50px; font-size: 150%;">
                    <b>Select Exam Type :</b>
                    <select name="exam">
                        <option>MidTerm Examination</option>
                        <option>Final Examination</option>
                    </select><br>
                    <b style="margin-left: 60px;">Select Start Date :</b>
                    <input id="startdatepicker" name="startdatepicker"/><br>
                    <input type="submit" class="btn btn-primary btn-lg btn-black sharp" value="Generate" style="margin-top:50px; ">
                </form>
            </div>
            <a href="home.php">GO BACK TO HOME PAGE</a>
        </div>
    </body>
</html>