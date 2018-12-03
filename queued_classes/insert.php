<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
include_once '../config/database.php';
include_once '../objects/queued_classes.php';

$database = new Database();
$db = $database->getConnection();

$queued_classes = new queued_classes($db);

$data = json_decode(file_get_contents("php://input"));

if(
    !empty($data->faculty_id) &&
    !empty($data->class_id) &&
    //!empty($data->request_time) &&
    //!empty($data->class_status) &&
    !empty($data->course_id) &&
    !empty($data->section) &&
    !empty($data->date) 
    //!empty($data->day)
){
    $queued_classes->faculty_id=$data->faculty_id;
    $queued_classes->class_id=$data->class_id;
    //$queued_classes->request_time=$data->request_time;
    //$queued_classes->class_status=$data->class_status;
    $queued_classes->course_id=$data->course_id;
    $queued_classes->section=$data->section;
    $queued_classes->date=$data->date;
    //$queued_classes->day=$data->day;

    if($queued_classes->insert()){
        http_response_code(201);
 
        // tell the user
        echo json_encode(array("message" => "New Class Request Queued."));
    }
    else{
 
        // set response code - 503 service unavailable
        http_response_code(503);
 
        // tell the user
        echo json_encode(array("message" => "Unable to queue class."));
    }
}
else{
 
    // set response code - 400 bad request
    http_response_code(400);
 
    // tell the user
    echo json_encode(array("message" => "Unable to queue class. Data is incomplete."));
}
?>