<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
// include database and object files
include_once '../config/database.php';
include_once '../objects/queued_classes.php';
 
// get database connection
$database = new Database();
$db = $database->getConnection();
 
// prepare queued_classes object
$queued_classes = new queued_classes($db);
 
// get faculty_id of queued_classes to be edited
$data = json_decode(file_get_contents("php://input"));
 
// set faculty_id property of queued_classes to be edited
$queued_classes->faculty_id = $data->faculty_id;
$queued_classes->class_id = $data->class_id;
 
// set queued_classes property values
$queued_classes->class_status = $data->class_status;

 
// update the queued_classes
if($queued_classes->update()){
 
    // set response code - 200 ok
    http_response_code(200);
 
    // tell the user
    echo json_encode(array("message" => "queued_classes was updated."));
}
 
// if unable to update the queued_classes, tell the user
else{
 
    // set response code - 503 service unavailable
    http_response_code(503);
 
    // tell the user
    echo json_encode(array("message" => "Unable to update queued_classes."));
}
?>