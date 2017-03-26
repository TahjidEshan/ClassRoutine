<?php

include("connect.php");

class admin {

    public $c;
    public $conn;

    public function __construct() {
        $this->c = new connect();
        $this->conn = $this->c->con();
    }

    public function showClasses() {
        $query = "select * from School";
        $result = $this->c->execute($this->conn, $query);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $val = $row['class'];
                echo '<tr>' . '<td>' . '<a href="className.php?idVal=' . $val . '">' . 'Class &nbsp' . $val . '</a>' . '</td>' . '</tr>';
            }
        }
    }

    public function showSchedule($id) {
        $query = "select schedule.class, schedule.period, schedule.subject, Days.Day, "
                . "teachers.NameTeacher from schedule, Days, teachers where schedule.Day=Days.Number "
                . "and schedule.Teacher=teachers.ID and schedule.class=" . $id;
        $result = $this->c->execute($this->conn, $query);
        echo '<h1>Class ' . $id . '</h1>';
        $sat = array();
        $sun = array();
        $mon = array();
        $tue = array();
        $wed = array();
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                if ($row['Day'] == 'Saturday') {
                    array_push($sat, ($row['subject'] . "<br>" . $row['NameTeacher']));
                } elseif ($row['Day'] == 'Sunday') {
                    array_push($sun, ($row['subject'] . "<br>" . $row['NameTeacher']));
                } elseif ($row['Day'] == 'Monday') {
                    array_push($mon, ($row['subject'] . "<br>" . $row['NameTeacher']));
                } elseif ($row['Day'] == 'Tuesday') {
                    array_push($tue, ($row['subject'] . "<br>" . $row['NameTeacher']));
                } elseif ($row['Day'] == 'Wednesday') {
                    array_push($wed, ($row['subject'] . "<br>" . $row['NameTeacher']));
                }
            }
            echo '<tr><td>Time</td><td>1st</td><td>2nd</td><td>3rd</td>'
            . '<td>Break</td><td>4th</td><td>5th</td><td>6th</td><td>7th</td><td>8th</td></tr>';
            echo '<tr><td>Day</td><td>8.00-8.45</td><td>8.45-9.25</td><td>9.25-10.05</td><td>&nbsp;</td><td>10.35-11.20</td>'
            . '<td>11.20-12.05</td><td>12.05-12.50</td><td>12.50-1.35</td><td>1.35-2.20</td></tr>';
            echo '<tr><td>Saturday</td><td>' . $sat[0] . '</td><td>' . $sat[1] . '</td><td>' . $sat[2] . '</td><td>&nbsp;</td><td>' . $sat[3] . '</td>'
            . '<td>' . $sat[4] . '</td><td>' . $sat[5] . '</td><td>' . $sat[6] . '</td><td>' . $sat[7] . '</td></tr>';
            echo '<tr><td>Sunday</td><td>' . $sun[0] . '</td><td>' . $sun[1] . '</td><td>' . $sun[2] . '</td><td>&nbsp;</td><td>' . $sun[3] . '</td>'
            . '<td>' . $sun[4] . '</td><td>' . $sun[5] . '</td><td>' . $sun[6] . '</td><td>' . $sun[7] . '</td></tr>';
            echo '<tr><td>Monday</td><td>' . $mon[0] . '</td><td>' . $mon[1] . '</td><td>' . $mon[2] . '</td><td>&nbsp;</td><td>' . $mon[3] . '</td>'
            . '<td>' . $mon[4] . '</td><td>' . $mon[5] . '</td><td>' . $mon[6] . '</td><td>' . $mon[7] . '</td></tr>';
            echo '<tr><td>Tuesday</td><td>' . $tue[0] . '</td><td>' . $tue[1] . '</td><td>' . $tue[2] . '</td><td>&nbsp;</td><td>' . $tue[3] . '</td>'
            . '<td>' . $tue[4] . '</td><td>' . $tue[5] . '</td><td>' . $tue[6] . '</td><td>' . $tue[7] . '</td></tr>';
            echo '<tr><td>Saturday</td><td>' . $wed[0] . '</td><td>' . $wed[1] . '</td><td>' . $wed[2] . '</td><td>&nbsp;</td><td>' . $wed[3] . '</td>'
            . '<td>' . $wed[4] . '</td><td>' . $wed[5] . '</td><td>' . $wed[6] . '</td><td>' . $wed[7] . '</td></tr>';
        } else {
            self::populateSchedule($id);
            self::showSchedule($id);
        }
    }

    public function populateSchedule($id) {
        for ($i = 1; $i <= 5; $i++) {
            for ($j = 1; $j <= 8; $j++) {
                $query = "select * from teacherSubject where not exists (select * from schedule where "
                        . "schedule.Teacher=teacherSubject.Teacher and schedule.Period=" . $j . " and schedule.Day=" . $i . ")";
                $result = $this->c->execute($this->conn, $query);
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $check = "select * from schedule where Class=" . $id . " and Day=" . $i . " and Period=" . $j;
                        $resultCheck = $this->c->execute($this->conn, $check);
                        $check1 = "select * from schedule where Class=" . $id . " and Day=" . $i . " and Subject='" . $row['Subject'] . "'";
                        $resultCheck1 = $this->c->execute($this->conn, $check1);
                        if (!$resultCheck->num_rows > 0 && !$resultCheck1->num_rows > 0) {
                            $query1 = "INSERT INTO `routine`.`schedule` (`Class`, `Day`, `Period`, `Teacher`, `Subject`) "
                                    . "VALUES ('" . $id . "', '" . $i . "', '" . $j . "', '" . $row['Teacher'] . "', '" . $row['Subject'] . "');";
                            $this->c->insert($this->conn, $query1);
                            //echo $query1 . "<br>";
                        }
                    }
                }
            }
        }
    }

    public function createExam($name, $startDate) {
        $query = "INSERT INTO `routine`.`ExamName` (`Name`, `ExamName`) VALUES (NULL, '" . $name . "')";
        $this->c->insert($this->conn, $query);
        //$date = strtotime("+1 day", strtotime($startDate));
        //echo date("Y/m/d", $date);
        $sub = array();
        $query1 = "select * from Subjects";
        $result = $this->c->execute($this->conn, $query1);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                array_push($sub, $row['Name']);
            }
        }
        for ($i = 1; $i <= 10; $i++) {
            $startTime = '10.00 am';
            $endTime = '1.00 pm';
            if ($i > 5) {
                $startTime = '2.00 pm';
                $endTime = '5.00 pm';
            }
            $date = $startDate;
            for ($j = 1; $j <= count($sub); $j++) {
                $query2 = "select min(teachers.ID) from teachers where not exists"
                        . "(select * from exam where exam.Guard=teachers.ID "
                        . "and exam.Date='" . $date . "' and exam.StartTime='" . $startTime . "') "
                        . "ORDER BY teachers.ID";
                //echo $query2;
                $result1 = $this->c->execute($this->conn, $query2);
                $teacher = "TBA";
                if ($result1->num_rows > 0) {
                    while ($row1 = $result1->fetch_assoc()) {
                        $teacher = $row1['min(teachers.ID)'];
                    }
                }
                //echo $teacher;
                $subQuery = "select Name from ExamName where ExamName.ExamName='" . $name . "'";
                $subResult = $this->c->execute($this->conn, $subQuery);
                $subRow = $subResult->fetch_assoc();
                $query3 = "INSERT INTO `routine`.`exam` "
                        . "(`Date`, `Class`, `StartTime`, `EndTIme`, `Guard`, `Room`, `Name`,`Subject`) "
                        . "VALUES ('" . $date . "', '" . $i . "', '" . $startTime . "', '" . $endTime . "', '" . $teacher . "', '303', '" . $subRow['Name'] . "', '" . $sub[$j] . "')";
                $this->c->insert($this->conn, $query3);
                $date = strtotime("+1 day", strtotime($date));
                $date = date("d/m/Y", $date);
            }
        }
        self::showRoutine($name);
    }

    public function showRoutine($name) {
        $query = "select * from ExamName,exam,teachers where ExamName.Name=exam.Name "
                . "and exam.Guard=teachers.ID and ExamName.ExamName='" . $name . "'";
        $result = $this->c->execute($this->conn, $query);
        //echo $query;
        echo '<tr><td>Date</td><td>Class</td><td>Subject</td><td>Guard</td><td>Room</td><td>Time</td></tr>';
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr><td>" . $row['Date'] . "</td><td>" . $row['Class'] . "</td><td>" . $row['Subject'] . "</td><td>" . $row['NameTeacher'] . "</td><td>" . $row['Room'] . "</td><td>" . $row['StartTime'] . "-" . $row['EndTIme'] . "</td></tr>";
            }
        }
        echo "<a href='home.php'>Go Back To Home Page</a>";
    }

    public function addTeacher($name, $mail, $phone, $subject) {
        $query = "INSERT INTO `routine`.`teachers` (`ID`, `NameTeacher`, `Phone`, `Email`) VALUES (NULL, '" . $name . "', '" . $phone . "', '" . $mail . "')";
        $this->c->insert($this->conn, $query);
        $query1 = "select ID from teachers where NameTeacher='" . $name . "' and Phone=" . $phone . " and Email='" . $mail . "'";
        $result = $this->c->execute($this->conn, $query1);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $query2 = "INSERT INTO `routine`.`teacherSubject` (`Teacher`, `Subject`) "
                        . "VALUES ('" . $row['ID'] . "', '" . $subject . "')";
                $this->c->insert($this->conn, $query2);
            }
        }
        echo "<a href='home.php'>Go Back To Home Page</a>";
    }

}

?>
