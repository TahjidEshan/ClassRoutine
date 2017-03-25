<!DOCTYPE html>
<html>
    <head>
        <title>title</title>
    </head>
    <body>
        <table style="border:2px solid black;">
            <?php
            include ("admin.php");
            session_start();
            $value = $_GET['idVal'];
            $admin = new admin();
            $admin->populateSchedule($value);
            $admin->showSchedule($value);
            ?>
        </table>
        
        <a href="home.php">GO BACK</a>
    </body>
</html>