<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="Style.css"/>
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            <table style="border:2px solid black; width:100%; font-size:200%;">
                <?php
                include ("admin.php");
                session_start();
                $admin = new admin();
                $admin->showClasses();
                ?>
            </table>
            <a href="InputExam.php" style="text-align:center;font-size:200%;margin-left:520px; ">New Exam</a>
            <a href="teacher.php" style="text-align:center;font-size:200%;margin-left:500px; ">Add Teacher</a>
        </div>
    </body>
</html>
