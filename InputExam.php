<!Doctype html>
<html>
    <head>
        <title>EXAM CREATION</title>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

        <script>
            $(document).ready(function () {
                $("#startdatepicker").datepicker();
                $("#enddatepicker").datepicker();
            });
        </script>
    </head>
    <body>
        <form name="Exam" action = "exam.php" method="post">
            <b>Select Exam Type</b>
            <select name="exam">
                <option>MidTerm Examination</option>
                <option>Final Examination</option>
            </select><br>
            Select Start Date
            <input id="startdatepicker" name="startdatepicker"/><br>
            Select End Date
            <input id="enddatepicker" name="enddatepicker"/><br>
            <input type="submit" value="Generate">
        </form>
    </body>
</html>