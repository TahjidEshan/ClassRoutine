<!DOCTYPE html>
<html>
    <head>
        <title>Teacher</title>
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
            <h3 style="align-self: center; margin-left: 520px;">Successfully Added Teacher</h3>
            <?php
            include ("admin.php");
            session_start();
            $admin = new admin();
            $name = $_POST ["name"];
            $mail = $_POST ["mail"];
            $phone = $_POST ["phone"];
            $subject = $_POST ["subject"];
            $admin->addTeacher($name, $mail, $phone, $subject);
            ?>
        </div>
    </body>
</html>
