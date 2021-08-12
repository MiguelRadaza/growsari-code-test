<?php

include('db_connection.php');

$message = "";

if (isset($_POST['btn_action'])) {
    if($_POST['btn_action'] == 'Add')
	{
		$query = "
		INSERT INTO students (name, lastName, created_at)
		VALUES (:name, :lastName, :created_at)
		";
		$statement = $connect->prepare($query);
		$statement->execute(
			array(
				':name'		  =>	$_POST["name"],
				':lastName'	  =>	$_POST['lastName'],
				':created_at' =>	date("Y-m-d"),
			)
		);
		$result = $statement->fetchAll();
		if(isset($result))
		{
            echo 'Student Created';
		}else{
            echo 'Something went wrong';
        }
	}

	if($_POST['btn_action'] == 'fetch_student')
	{
		$query = "
			SELECT * FROM students WHERE ID = :user_id
		";
		$statement = $connect->prepare($query);
		$statement->execute(
			array(
				':user_id'	=>	$_POST["user_id"]
			)
		);
		$result = $statement->fetchAll();
		foreach($result as $row)
		{
			$output['name'] = $row['name'];
			$output['lastName'] = $row['lastName'];
		}
		echo json_encode($output);
	}

	if($_POST['btn_action'] == 'update')
	{

		$query = "
		UPDATE students SET
			name = '".$_POST["name"]."',
			lastName = '".$_POST["lastName"]."'
			WHERE ID = '".$_POST["user_id"]."'
		";
		$statement = $connect->prepare($query);
		$statement->execute();
		$result = $statement->fetchAll();
		if(isset($result))
		{
			echo 'Student Details Updated';
		}
	}

	if($_POST['btn_action'] == 'delete')
	{
		$query = "
		UPDATE students
		SET status = :status
		WHERE ID = :ID
		";
		$statement = $connect->prepare($query);
		$statement->execute(
			array(
				':status'	=>	0,
				':ID'		=>	$_POST["user_id"]
			)
		);
		$result = $statement->fetchAll();
		if(isset($result))
		{
			echo 'User Status change to Inactive';
		}
	}
}

