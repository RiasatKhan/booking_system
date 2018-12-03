<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
 
// include database and object files
include_once '../config/database.php';
include_once '../objects/time_slots.php';
 
// get database connection
$database = new Database();
$db = $database->getConnection();
 
// prepare time_slots object
$time_slots = new time_slots($db);
 
// set ID property of record to read
$time_slots->slot_id = isset($_GET['slot_id']) ? $_GET['slot_id'] : die();
 
// read the details of time_slots to be edited
$time_slots->search();
 
if($time_slots->slot_id != null){
    // create array
    $time_slots_arr = array(
        "slot_id" =>  $time_slots->id,
        "start_time" => $time_slots->start_time,
        "end_time" => $time_slots->end_time
        
 
    );
 
    // set response code - 200 OK
    http_response_code(200);
 
    // make it json format
    echo json_encode($time_slots_arr);
}
 
else{
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user time_slots does not exist
    echo json_encode(array("message" => "time_slots does not exist."));
}
?>