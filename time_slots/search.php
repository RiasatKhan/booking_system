<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
 
// include database and object files
include_once '../config/core.php';
include_once '../config/database.php';
include_once '../objects/time_slots.php';
 
// instantiate database and time_slots object
$database = new Database();
$db = $database->getConnection();
 
// initialize object
$time_slots = new time_slots($db);
 
// get keywords
$keywords=isset($_GET["slot_id"]) ? $_GET["slot_id"] : "";
 
// query time_slots
$stmt = $time_slots->search($keywords);

$num = $stmt->rowCount();
 
// check if more than 0 record found
if($num>0){
 
    // time_slots array
    $time_slots_arr=array();
    $time_slots_arr["records"]=array();
 
    // retrieve our table contents
    // fetch() is faster than fetchAll()
    // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
 
        $time_slots_item=array(
            "slot_id" => $slot_id,
            "start_time" => $start_time,
            "end_time" => $end_time
        );
 
        array_push($time_slots_arr["records"], $time_slots_item);
    }
 
    // set response code - 200 OK
    http_response_code(200);
 
    // show time_slots data
    echo json_encode($time_slots_arr);
}
 
else{
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user no time_slots found
    echo json_encode(
        array("message" => "No time_slots found.")
    );
    
}
?>