<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <table style="border:1px solid black; width:100%;">
            <?php
            include ("admin.php");
            session_start();
            $exam = $_POST ["exam"];
            $startDate = $_POST ["startdatepicker"];
            $examName = $exam . " " . $startDate;
            $admin = new admin();
            $admin->createExam($examName, $startDate);
            //echo $exam."<br>".$startDate."<br>".$endDate;
            ?>
        </table>
    </body>
</html>