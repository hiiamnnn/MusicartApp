<?php
    //hiphop genre
    $conn = mysqli_connect("us-cdbr-east-04.cleardb.com", "bc16ebc3cf265a", "acc60a3c", "heroku_26e803d6028caf6");
    // get data from database
    $result = $conn->query("SELECT * FROM hiphopsongslist");
 
    // adding in array
    $data = array();
    while ($row = mysqli_fetch_object($result))
    {
        //printf("%s %s %s %s %s \n", $row->idSongsList, $row->Title, $row->Artists, $row->Time, $row->Link);
        array_push($data, $row);
    }
       
    // send as response
    echo json_encode($data);

    
    
?>