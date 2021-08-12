<?php

    try {

        $connect = new PDO('mysql:host=localhost;dbname=code_test', 'root', '');

    } catch (PDOException $e) {
        echo "Error!: " . $e->getMessage() ;
        die();
    }