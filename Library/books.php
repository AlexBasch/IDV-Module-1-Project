<?php

 	header("Access-Control-Allow-Origin: *");
		
	class Book{
		public $id;
		public $name;
		public $cata;
		public $source;
		public $descript;
		public $author;
	}
	class Books{
		public $books;
	}
		
	require 'Slim/Slim.php';
	\Slim\Slim::registerAutoloader();
	
	$app = new \Slim\Slim();
	
	$app -> get('/books/',function(){
		
	$servername = "localhost";
	$username = "root";
	$password = "mysql";
	$dbname = "Library";

	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	// Check connection
	if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
	}
		
		$sql = "SELECT * FROM Books";
		
		$result = mysqli_query($conn, $sql);
	
		$books = new Books();
		$books->books = array();
		
		while($row = $result->fetch_array()){
    	
			$book1 = new Book();
			$book1 -> id = $row["bID"];
			$book1 -> name = $row["bName"];
			$book1 -> cata = $row["bCata"];
			$book1 -> source = $row["bSource"];
			$book1 -> descript = $row["bDescript"];
			$book1 -> author = $row["bAuthor"];
			array_push($books->books, $book1);
		}
		
		echo json_encode($books);	
	});
		
	$app -> run();
	
	


?>