<?php
class booked_classes{
    private $conn;
    private $table_name="booked_classes";

    public $faculty_id;
    public $class_id;
    public $request_time;
    public $class_status;
    public $course_id;
    public $section;
    public $date;
    public $day;

    public function __construct($db){
        $this->conn=$db;
    }


}