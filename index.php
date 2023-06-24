<?php

  require_once('db.php');
  
  //response json ketika success
  function resSuccess($status, $message,$count, $data){
      $response = [
          "status" => $status,
          "message" => $message,
          "hit_date" => date('Y-m-d H:i:s'),
          "user_ip" => $_SERVER['REMOTE_ADDR'],
          "count" => $count,
          "data" => $data
      ];
      header("Content-type: application/json");
      echo json_encode($response);
  }

  //response json ketika error
  function resError($status, $message){
    $response = [
        "status" => $status,
        "message" => $message,
        "hit_date" => date('Y-m-d H:i:s'),
        "user_ip" => $_SERVER['REMOTE_ADDR'],
        "count" => null,
        "data" => null
    ];
    header("Content-type: application/json");
    echo json_encode($response);
  }

  //mengecek token pada db
  function validToken($conn,$token){
    $q = "SELECT u.token 
            FROM user u
            WHERE u.token='$token'
            LIMIT 1";
    $mq = mysqli_query($conn, $q);
    $r = array();
    $row = $mq->fetch_assoc();
    if($row){
        return true;
    }else{
        return false;
    }
  }

  //manampilkan Top 10 Wisata
  function getTop($conn){
      $q = "SELECT 
            w.id_wisata, k.kategori_name, w.title, w.image,w.summary, 
            u.fullname AS user_create, w.created_at, w.hit_count
            FROM wisata w
            LEFT JOIN kategori k ON w.id_kategori = k.id_kategori
            LEFT JOIN user u ON w.created_by = u.id_user
            ORDER BY w.created_at DESC
            LIMIT 50";
      $mq = mysqli_query($conn, $q);
      $r = array();
      while($row = mysqli_fetch_array($mq)){
          array_push($r,array(
              'id_wisata' => $row['id_wisata'],
              'kategori_name' => $row['kategori_name'],
              'title' => $row['title'],
              'image' => $row['image'],
              'summary' => $row['summary'],
              'user_create' => $row['user_create'],
              'created_at' => $row['created_at'],
              'hit_count' => $row['hit_count']
          ));
      }

      return $r;
  }
  
  //manampilkan Popular Wisata
  function getPopular($conn){
      $q = "SELECT 
            w.id_wisata, k.kategori_name, w.title, w.image,w.summary, 
            u.fullname AS user_create, w.created_at, w.hit_count
            FROM wisata w
            LEFT JOIN kategori k ON w.id_kategori = k.id_kategori
            LEFT JOIN user u ON w.created_by = u.id_user
            ORDER BY w.hit_count DESC
            LIMIT 50";
      $mq = mysqli_query($conn, $q);
      $r = array();
      while($row = mysqli_fetch_array($mq)){
          array_push($r,array(
              'id_wisata' => $row['id_wisata'],
              'kategori_name' => $row['kategori_name'],
              'title' => $row['title'],
              'image' => $row['image'],
              'summary' => $row['summary'],
              'user_create' => $row['user_create'],
              'created_at' => $row['created_at'],
              'hit_count' => $row['hit_count']
          ));
      }

      return $r;
  }
  
  //manampilkan Kategori Wisata
  function getKategori($conn,$id_kategori){
      $q = "SELECT 
            w.id_wisata, k.kategori_name, w.title, w.image,w.summary, 
            u.fullname AS user_create, w.created_at, w.hit_count
            FROM wisata w
            LEFT JOIN kategori k ON w.id_kategori = k.id_kategori
            LEFT JOIN user u ON w.created_by = u.id_user
            WHERE w.id_kategori='$id_kategori'
            ORDER BY w.created_at DESC
            LIMIT 50";
      $mq = mysqli_query($conn, $q);
      $r = array();
      while($row = mysqli_fetch_array($mq)){
          array_push($r,array(
              'id_wisata' => $row['id_wisata'],
              'kategori_name' => $row['kategori_name'],
              'title' => $row['title'],
              'image' => $row['image'],
              'summary' => $row['summary'],
              'user_create' => $row['user_create'],
              'created_at' => $row['created_at'],
              'hit_count' => $row['hit_count']
          ));
      }

      return $r;
  }
  
  //menambah hit count
  function hitCount($conn,$id){
      $q = "UPDATE wisata w
            SET w.hit_count = w.hit_count+1
            WHERE w.id_wisata='$id'
            ";
      $mq = mysqli_query($conn, $q);
      return $mq;
  }


    
  //manampilkan Master Kategori
  function getMasterKategori($conn){
      $q = "SELECT 
            k.id_kategori,k.kategori_name
            FROM kategori k
            ORDER BY k.kategori_name ASC
            ";
      $mq = mysqli_query($conn, $q);
      $r = array();
      while($row = mysqli_fetch_array($mq)){
          array_push($r,array(
              'id_kategori' => $row['id_kategori'],
              'kategori_name' => $row['kategori_name']
          ));
      }

      return $r;
  }

  
  //validasi & hasil rest api
  isset($_GET['token']) ? $token = $_GET['token'] : $token="";
  isset($_GET['modul']) ? $modul = $_GET['modul'] : $modul="";
  isset($_GET['id']) ? $id = $_GET['id'] : $id="";
  
  if(validToken($conn,$token)){

            switch ($modul) {
              case "top":
                resSuccess(
                    "success",
                    "Success Get Top 10",
                    count(getTop($conn)),
                    getTop($conn)
                );
                break;
              case "popular":
                resSuccess(
                    "success",
                    "Success Get Popular",
                    count(getPopular($conn)),
                    getPopular($conn)
                );
                break;
              case "kategori":
                resSuccess(
                    "success",
                    "Success Get Kategori",
                    count(getKategori($conn,$id)),
                    getKategori($conn,$id)
                );
                break;
              case "hitcount":
                resSuccess(
                    "success",
                    "Success update hitcount",
                    1,
                    hitCount($conn,$id)
                );
                break;
              case "masterkategori":
                resSuccess(
                    "success",
                    "Success Get Master Kategori",
                    count(getMasterKategori($conn)),
                    getMasterKategori($conn)
                );
                break;
              default:
                resSuccess(
                    "success",
                    "Success Get Top 10",
                    count(getTop($conn)),
                    getTop($conn)
                );
            }
          
        
 

      
      
  }else{
      resError("error","Invalid Token");
  }