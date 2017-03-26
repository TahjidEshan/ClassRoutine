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
            <h3 style="align-self: center; margin-left: 520px;">Add New Teacher</h3>
            <form name="Teacher Form" action = "teacherAdd.php" method="post">
                <div id="teacher" class="thin-black-border">
                    <fieldset>
                        <legend class="thin-black-border">Information</legend>
                        <label> Name :<input name="name" type="text" class="form-control" required></label><br>                      <br>
                        <label> Email :<input name="mail" type="email" class="form-control" required></label><br>
                        <label> Phone :<input name="phone" type="text" class="form-control" required></label><br>
                        <label> Subject :<select name="subject">
                                <?php
                                include ("connect.php");
                                $c = new connect();
                                $conn = $c->con();
                                $query = "select * from Subjects";
                                $result = $c->execute($conn, $query);
                                if ($result->num_rows > 0) {
                                    while ($row = $result->fetch_assoc()) {
                                        echo "<option>" . $row['Name'] . "</option>";
                                    }
                                }
                                ?>
                            </select></label>
                        <input type="submit" class="btn btn-primary btn-lg btn-black sharp" value="Submit"> 
                    </fieldset>
                </div>  
            </form> 
        </div>
    </body>
</html>
