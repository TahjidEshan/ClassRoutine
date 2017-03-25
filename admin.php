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
                . "teachers.Name from schedule, Days, teachers where schedule.Day=Days.Number "
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
                    array_push($sat, ($row['subject'] . "<br>" . $row['Name']));
                } elseif ($row['Day'] == 'Sunday') {
                    array_push($sun, ($row['subject'] . "<br>" . $row['Name']));
                } elseif ($row['Day'] == 'Monday') {
                    array_push($mon, ($row['subject'] . "<br>" . $row['Name']));
                } elseif ($row['Day'] == 'Tuesday') {
                    array_push($tue, ($row['subject'] . "<br>" . $row['Name']));
                } elseif ($row['Day'] == 'Wednesday') {
                    array_push($wed, ($row['subject'] . "<br>" . $row['Name']));
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

    public function createExam($name, $startDate, $endDate) {
        $query = "INSERT INTO `routine`.`ExamName` (`Name`, `ExamName`) VALUES (NULL, '" . $name . "')";
        $this->c->insert($this->conn, $query);
        
    }

}

?>
