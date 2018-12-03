<?php
class available_classes{
    private $conn;
    private $table_name="available_classes_schedule";

   
    public $class_id;
    public $day;
    public $time_slot;
    public $room_number;
    

    public function __construct($db){
        $this->conn=$db;
    }
    function read(){
 
        // select all query
        $query = "SELECT
                     class_id,
                        day,
                        time_slot,
                        room_number
                FROM
                    " . $this->table_name;
     
        // prepare query statement
        $stmt = $this->conn->prepare($query);
     
        // execute query
        $stmt->execute();
     
        return $stmt;
    }
}
?>