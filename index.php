<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>login</title>
        <link rel="stylesheet" type="text/css" href="Style.css"/>
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style type="text/css" >
            h2{letter-spacing: 10px; font-size: .2in}
            span{color: red}
            form{box-alignment: left;}

        </style>
    </head>
    <body>
        <div class="container-fluid whole">
            <div class="col-sm-12" id="head">
                <div class="col-sm-1"><img class="img-responsive" src="jb_logo.png" alt="LOGO"></div>
                <div class="col-sm-6"><h3> <b>Ibrahimpur Salahuddin Shikhyalaya </b></h3></div>
                <hr><br>
                <div class="col-sm-10" id="address"><h5><b> East Sheorapara, Mirpur, Dhaka-1216 </b></h5></div>
                <div class="col-sm-10" id="address1"><h5><b> Schedule Management System</b></h5></div>
            </div>
            <form name="Login Form" action = "login.php" method="post">
                <div id="login" class="thin-black-border">
                    <fieldset>
                        <legend class="thin-black-border">LOGIN</legend>
                        <label> Username : <input name="name" type="text"><span>*</span></label>
                        <br>
                        <label> Password &nbsp;: <input name="pass" type="password"><span>*</span></label></br>
                        <input type="submit" class="btn btn-primary btn-lg btn-black sharp" value="Login"><span> 
                    </fieldset>
                </div>           
            </form>
        </div>
    </body>
</html>