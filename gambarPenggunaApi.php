<?php

    $image = $_FILES['file']['tmp_name'];
    $imagename = $_FILES['file']['name'];

    // Path untuk menyimpan gambar
    $file_path = $_SERVER['DOCUMENT_ROOT'] . '/bukuRestApi/';
    $response = array();
    if (!file_exists($file_path)) {
        mkdir($file_path, 0777, true);
    }
    if(!$image){
        $response = array(
            'status' = 0,
            'message' => "Gagal menemukan gambar!"
        );
    }
    else{
        if(move_uploaded_file($image, $file_path.'/'.$imagename)){
            $response = array(
                'status' = 1,
                'message' => "Sukses upload gambar!"
            );
        } else {
            $response = array(
                'status' = 0,
                'message' => "Gagal upload gambar!"
            );
        }
    }
    header('Content-Type: application/json');
    echo json_encode($response);

?>