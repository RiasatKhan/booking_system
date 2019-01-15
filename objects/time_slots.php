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
    function search($keywords){
        
        // query to read single record
        $query = "SELECT
                    slot_id,start_time,end_time
                FROM
                    " . $this->table_name . "
                    
                WHERE
                    slot_id = ".$keywords
                ;
                
        // prepare query statement
        $stmt = $this->conn->prepare( $query );
     
        // bind id of product to be updated
        $keywords=htmlspecialchars(strip_tags($keywords));
        $keywords = "%{$keywords}%";
        
        // bind
        $stmt->bindParam(1, $keywords);
        //$stmt->bindParam(2, $keywords);
        //$stmt->bindParam(3, $keywords);
     
        // execute query
        $stmt->execute();
     
        return $stmt;
    
        
    }
}
?>