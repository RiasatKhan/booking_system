<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
 
// include database and object files
include_once '../config/core.php';
include_once '../config/database.php';
include_once '../objects/available_classes.php';
 
// instantiate database and available_classes object
$database = new Database();
$db = $database->getConnection();
 
// initialize object
$available_classes = new available_classes($db);
 
// get keywords
$keyword1=isset($_GET["day"]) ? $_GET["day"] : "";
$keyword2=isset($_GET["time_slot"]) ? $_GET["time_slot"] : "";
 
// query available_classes
$stmt = $available_classes->search($keyword1,$keyword2);
$num = $stmt->rowCount();
 
// check if more than 0 record found
if($num>0){
 
    // available_classes array
    $available_classes_arr=array();
    $available_classes_arr["records"]=array();
 
    // retrieve our table contents
    // fetch() is faster than fetchAll()
    // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
 
        $available_classes_item=array(
            "class_id" => $class_id,
            "room_number" => $room_number,
            "day" => $day,
            "time_slot" => $time_slot
        );
 
        array_push($available_classes_arr["records"], $available_classes_item);
    }
 
    // set response code - 200 OK
    http_response_code(200);
 
    // show available_classes data
    echo json_encode($available_classes_arr);
}
 
else{
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user no available_classes found
    echo json_encode(
        array("message" => "No available_classes found.")
    );
}
?>