<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>login</title>
        <link rel="stylesheet" type="text/css" href="Login.css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style type="text/css" >
            h2{letter-spacing: 10px; font-size: .2in}
            span{color: red}
            form{box-alignment: left;}

        </style>
    </head>
    <body>
        <div>
            <div id="header">
                <h1>Routine</h1>
                <p>Generator Service</p>
            </div>
            <form name="Login Form" action = "login.php" method="post">
                <div id="login">
                    <fieldset>
                        <legend>LOGIN</legend>
                        <label> Username : <input name="name" type="text"><span>*</span></label>
                        </br>
                        <label> Password &nbsp;: <input name="pass" type="password"><span>*</span></label></br>
                        <input type="submit" value="Login"><span> 
                    </fieldset>
                </div>           
            </form>
        </div>
    </body>
</html>