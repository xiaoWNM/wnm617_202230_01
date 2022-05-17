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



function makeUpload($file, $folder) {
   $filename = microtime(true) . "_" . $_FILES[$file]['name'];

   if(@move_uploaded_file(
      $_FILES[$file]['tmp_name'],
      $folder.$filename
   )) return ["result"=>$filename];
   else return [
      "error"=>"File Upload Failed",
      "filename"=>$filename
   ];
}





function makeStatement($data) {
   $c = makeConn();
   $t = $data->type;
   $p = $data->params;

   switch($t) {
   	  case "users_all":
   	     return makeQuery($c, "SELECT * FROM `track_users`", $p);
   	  case "animals_all":
   	     return makeQuery($c, "SELECT * FROM `track_animals`", $p);
   	  case "locations_all":
   	     return makeQuery($c, "SELECT * FROM `track_locations`", $p);


   	  case "user_by_id":
   	     return makeQuery($c, "SELECT id,name,username,img,email,gender,job,age FROM `track_users` WHERE `id` = ?", $p);
   	  case "dog_by_id":
   	     return makeQuery($c, "SELECT * FROM `track_animals` WHERE `id` = ?", $p);
   	  case "location_by_id":
   	     return makeQuery($c, "SELECT * FROM `track_locations` WHERE `id` = ?", $p);


   	  case "animals_by_user_id":
   	     return makeQuery($c, "SELECT * FROM `track_animals` WHERE `user_id` = ?", $p);
   	  case "locations_by_animal_id":
   	     return makeQuery($c, "SELECT * FROM `track_locations` WHERE `animal_id` = ?", $p);



           




      case "recent_dog_locations":
         return makeQuery($c,"SELECT *, a.img as img_color
         	FROM `track_animals` a
         	RIGHT JOIN `track_locations` l
         	ON a.id = l.animal_id
         	WHERE a.user_id = ?
         	ORDER BY l.animal_id, l.date_create DESC
         	", $p);



   /* INSERT */ 


      case "insert_user":
         $r = makeQuery($c,"SELECT id FROM `track_users` WHERE `username`= ? OR `email` = ?", [ $p[0], $p[1] ]);
         
         if(count($r['result'])) 
            return ["error"=>"Username or Email already exists"];

         makeQuery($c,"INSERT INTO 
            `track_users`
            (`username`, `email`,`password`,`img`,`date_create`)
            VALUES
            (?,? ,md5(?),'https:via.placeholder.com/400/?text=User', NOW())
            ", $p, false);
         return ["id"=>$c->lastInsertId()];    

      case "insert_dog":
         makeQuery($c,"INSERT INTO 
            `track_animals`
            (`user_id`, `name`,`breed`,`color`, `size`, `img`,`date_create`)
            VALUES
            (?,?,?,?,?, 'https:via.placeholder.com/400/?text=DOG', NOW())
            ", $p, false);
         return ["id"=>$c->lastInsertId()];

      case "insert_location":
         makeQuery($c,"INSERT INTO 
            `track_locations`
            (`animal_id`, `lat`,`lng`,`mood`, `img`, `date_create`)
            VALUES
            (?,?,?,?, 'https:via.placeholder.com/400/?text=IMG', NOW())
            ", $p, false);
         return ["id"=>$c->lastInsertId()];



      case "search_dogs":
         $p = ["%$p[0]%", $p[1]];
         return makeQuery($c,"SELECT *
            FROM `track_animals`
            WHERE
               `name` LIKE ? AND
               `user_id` = ?
            ",$p);

      case "filter_dogs":
         return makeQuery($c,"SELECT *
            FROM `track_animals`
            WHERE
               `$p[0]` = ? AND
               `user_id` = ?
            ",[$p[1],$p[2]]);




      


      /* UPDATES */ 

      case "update_user":
         $r = makeQuery($c, "UPDATE
            `track_users`
            SET
               `username` = ?,
               `email` = ?,
               `password` = ?
            WHERE `id` = ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return["result"=>"Success"];
   
      case "update_user_info":
         $r = makeQuery($c, "UPDATE
            `track_users`
            SET
               `name` = ?,
               `gender` = ?,
               `job` = ?,
               `age` = ?
            WHERE `id` = ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return["result"=>"Success"];

      case "update_password":
         $r = makeQuery($c, "UPDATE
            `track_users`
            SET
               `password` = md5(?),
            WHERE `id` = ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return["result"=>"Success"];
   
      case "update_dog":
         $r = makeQuery($c, "UPDATE
            `track_animals`
            SET
               `name` = ?,
               `breed` = ?,
               `color` = ?,
               `size` = ?
            WHERE `id` = ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return["result"=>"Success"];

      case "update_location":
         $r = makeQuery($c, "UPDATE
            `track_locations`
            SET
               `mood` = ?
            WHERE `id` = ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return["result"=>"Success"];



      /* UPLOAD */

      case "update_user_image":
         makeQuery($c,"UPDATE
            `track_users`
            SET `img`= ?
            WHERE `id`= ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return ["result"=>"Success"];

      case "update_dog_image":
         makeQuery($c,"UPDATE
            `track_animals`
            SET `img`= ?
            WHERE `id`= ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return ["result"=>"Success"];


      /* DELETE */
     
      case "delete_dog":
         $r = makeQuery($c, "DELETE FROM
            `track_animals`
            WHERE `id` = ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return["result"=>"Success"];



      case "check_signin":
   	   return makeQuery($c, "SELECT id from `track_users` WHERE `username` = ? AND `password` = md5(?)", $p);


   	case "most_recent_locations_by_user_id":
   	   return makeQuery($c, "SELECT lat, lng from `track_locations` LEFT JOIN `track_animals` on `track_locations`.`animal_id` = `track_animals`.`id` WHERE `track_animals`.`user_id` = ?", $p);

   	default:
   	     return ["error"=>"No Matched Type"];

   }
}




/*
"SELECT * FROM track_users",
"SELECT * FROM track_users WHERE id = ?",
"SELECT * FROM track_animals WHERE user_id = ?",
*/

if(!empty($_FILES)) {
   $r = makeUpload("image","../uploads/");
   die(json_encode($r));
}

$data = json_decode(file_get_contents("php://input"));

echo json_encode(
	  makeStatement($data),
	  JSON_NUMERIC_CHECK
);



