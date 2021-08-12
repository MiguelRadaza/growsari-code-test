<?php

include('db_connection.php');

$output = [];

$query = "SELECT * FROM students WHERE `status` = 1  ORDER BY ID DESC";


$statement = $connect->prepare($query);
$statement->execute();
$result = $statement->fetchAll();

$count = $statement->rowCount();

$data = array();
foreach ($result as $key => $value) {
    $sub_array = array();

    $sub_array[] = $value['ID'];
    $sub_array[] = $value['name'];
    $sub_array[] = $value['lastName'];
    $sub_array[] = $value['created_at'];
    $sub_array[] = '<button class="btn btn-info update" id="'.$value['ID'].'">View</button>';
    $sub_array[] = '<button class="btn btn-danger delete" id="'.$value['ID'].'">Delete</button>';
    $data[] = $sub_array;
}
$output = array(
    "data" => $data,
    "recordsTotal"  => $count,
    "recordsFiltered" => $count,

);
echo json_encode($output);
