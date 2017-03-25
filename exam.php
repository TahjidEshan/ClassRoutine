<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
        <?php
        include ("admin.php");
        session_start();
        $exam=$_POST ["exam"];
        $startDate=$_POST ["startdatepicker"];
        $endDate=$_POST ["enddatepicker"];
        //echo $exam."<br>".$startDate."<br>".$endDate;
        ?>
    </body>
</html>