<?php
class seats{
    private $conn;
    private $table_name="seats";

    public $room_number;
    public $seats;
    

    public function __construct($db){
        $this->conn=$db;
    }
    function read(){
 
        // select all query
        $query = "SELECT
                     room_number,
                        seats
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