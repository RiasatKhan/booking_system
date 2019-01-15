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
    function search($keyword1,$keyword2){
 
        // query to read single record
        $query = "SELECT
                    class_id,room_number
                FROM
                    " . $this->table_name . "
                    
                WHERE
                    day =". $keyword1 ." and time_slot = ".$keyword2
                ;
     
        // prepare query statement
        $stmt = $this->conn->prepare( $query );
     
        // bind id of product to be updated
        $keyword1=htmlspecialchars(strip_tags($keyword1));
        $keyword2=htmlspecialchars(strip_tags($keyword2));
        $keyword1 = "%{$keyword1}%";
        $keyword2 = "%{$keyword2}%";
     
        // bind
        $stmt->bindParam(1, $keywords);
        $stmt->bindParam(2, $keywords);
        $stmt->bindParam(3, $keywords);
     
        // execute query
        $stmt->execute();
     
        return $stmt;
    
        
    }
}
?>