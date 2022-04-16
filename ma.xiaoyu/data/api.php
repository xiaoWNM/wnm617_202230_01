<?php

function makeConn() {
	include_once "auth.php";
	try {
       $conn = new PDO(...Auth());
       $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
       return $conn;
	} catch(PDOException $e) {
       die('{"error":"'.$e->getMessage().'"}');
	}
}


//$r = PDO result
function fetchAll($r) {
   $a = [];
   while($row = $r->fetch(\PDO::FETCH_OBJ)) $a[] = $row;
   return $a;
}


/*
$c = connection
$ps = prepared statement
$p = parameters
*/
function makeQuery($c,$ps,$p,$makeResults=true) {
	try {
	    if(count($p)) {
	   	   $stmt = $c->prepare($ps);
	   	   $stmt->execute($p);
	    } else {
	       $stmt = $c->query($ps);
	    }

	    $r = $makeResults ? fetchAll($stmt) : [];

	    return [
	    	// "statement"=>$ps,
	    	// "statement"=>$p,
	    	"result"=>$r
	    ];

	} catch(PDOEXception $e) {
		return ["error"=>"Query Failed: ".$e->getMessage()];
	}
}

die(
	json_encode(
		makeQuery(
			makeConn(),
			"SELECT * FROM track_users ",
			[]


		)

	)

);



