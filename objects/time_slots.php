<?php
class time_slots {
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
    function search(){
 
        // query to read single record
        $query = "SELECT
                    start_time,end_time
                FROM
                    " . $this->table_name . "
                    
                WHERE
                    slot_id = ?"
                ;
     
        // prepare query statement
        $stmt = $this->conn->prepare( $query );
     
        // bind id of product to be updated
        $stmt->bindParam(1, $this->slot_id);
     
        // execute query
        $stmt->execute();
     
        // get retrieved row
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
     
        // set values to object properties
        $this->slot_id = $row['slot_id'];
        $this->start_time = $row['start_time'];
        $this->end_time = $row['end_time'];
        
    }
}
?>