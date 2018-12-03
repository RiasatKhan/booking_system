<?php
class queued_classes{
    private $conn;
    private $table_name="queued_classes";

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
    function read(){
 
        // select all query
        $query = "SELECT
                     faculty_id,
                        class_id,
                        request_time,
                     class_status,
                        course_id,
                        section,
                    date,
                        day
                FROM
                    " . $this->table_name;
     
        // prepare query statement
        $stmt = $this->conn->prepare($query);
     
        // execute query
        $stmt->execute();
     
        return $stmt;
    }


    function insert(){
 
        // query to insert record
        $query = "INSERT INTO
                    " . $this->table_name . "
                SET
                    faculty_id=:faculty_id, class_id=:class_id, course_id=:course_id, section=:section, date=:date";
     
        // prepare query
        $stmt = $this->conn->prepare($query);
     
        // sanitize
        $this->faculty_id=htmlspecialchars(strip_tags($this->faculty_id));
        $this->class_id=htmlspecialchars(strip_tags($this->class_id));
        //$this->request_time=htmlspecialchars(strip_tags($this->request_time));
        //$this->class_status=htmlspecialchars(strip_tags($this->class_status));
        $this->course_id=htmlspecialchars(strip_tags($this->course_id));
        $this->section=htmlspecialchars(strip_tags($this->section));
        $this->date=htmlspecialchars(strip_tags($this->date));
        //$this->day=htmlspecialchars(strip_tags($this->day));
     
        // bind values
        $stmt->bindParam(":faculty_id", $this->faculty_id);
        $stmt->bindParam(":class_id", $this->class_id);
        //$stmt->bindParam(":request_time", $this->request_time);
        //$stmt->bindParam(":class_status", $this->class_status);
        $stmt->bindParam(":course_id", $this->course_id);
        $stmt->bindParam(":section", $this->section);
        $stmt->bindParam(":date", $this->date);
        //$stmt->bindParam(":day", $this->day);
     
        // execute query
        if($stmt->execute()){
            return true;
        }
     
        return false;
         
    }

    function update(){
 
        // update query
        $query = "UPDATE
                    " . $this->table_name . "
                SET
                   class_status = :class_status
                WHERE
                    faculty_id = :faculty_id and class_id = :class_id";
     
        // prepare query statement
        $stmt = $this->conn->prepare($query);
     
        // sanitize
        $this->faculty_id=htmlspecialchars(strip_tags($this->faculty_id));
        $this->class_id=htmlspecialchars(strip_tags($this->class_id));
        $this->class_status=htmlspecialchars(strip_tags($this->class_status));
       
        
     
        // bind new values
        $stmt->bindParam(':faculty_id', $this->faculty_id);
        $stmt->bindParam(':class_id', $this->class_id);
        $stmt->bindParam(':class_status', $this->class_status);
       
        
     
        // execute the query
        if($stmt->execute()){
            return true;
        }
     
        return false;
    }
}

?>