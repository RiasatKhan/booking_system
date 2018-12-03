<?php
class seats{
    private $conn;
    private $table_name="time_slots";

    public $slot_id;
    public $start_time;
    public $end_time;
    

    public function __construct($db){
        $this->conn=$db;
    }
    function read(){
 
        // select all query
        $query = "SELECT
                     slot_id,
                        start_time,
                        end_time
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