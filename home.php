<!DOCTYPE html>
<html>
    <head>
        <title>title</title>
    </head>
    <body>
        <table style="border:1px solid black; border-collapse:collapse;">
            <?php
            include ("admin.php");
            session_start();
            $admin = new admin();
            $admin->showClasses();
            ?>
        </table>
        <a href="exam.php">Generate Exam</a>
    </body>
</html>
