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
        $admin = new admin();
        $admin->createExam($name, $startDate, $endDate);
        //echo $exam."<br>".$startDate."<br>".$endDate;
        ?>
    </body>
</html>