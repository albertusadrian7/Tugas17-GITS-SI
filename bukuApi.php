<?php 

require_once('connection.php');
if (function_exists($_GET['function'])) {
    $_GET['function']();
}

// Fungsi untuk get seluruh buku
function get_buku()
{
    global $conn;
    $query = mysqli_query($conn, "SELECT * FROM buku");
    $result = array();
    while ($row = mysqli_fetch_array($query)) {
        array_push($result, array(
            'id' => $row['id'],
            'judul' => $row['judul'],
            'penulis' => $row['penulis'],
            'rating' => $row['rating'],
            'harga' => $row['harga']
        ));
    }
    $response = array(
        'status' => 1,
        'message' => 'Success',
        'data' => $result
    );
    header('Content-Type: application/json');
    echo json_encode($response);
}


// Fungsi untuk get buku berdasarkan id
function get_buku_id()
{
    global $conn;
    $id =  $_GET['id'];
    $query = mysqli_query($conn, "SELECT * FROM buku WHERE id=" . $id);
    $result = array();
    while ($row = $query->fetch_assoc()) {
        $result = array(
            'id' => $row['id'],
            'judul' => $row['judul'],
            'penulis' => $row['penulis'],
            'rating' => $row['rating'],
            'harga' => $row['harga']
        );
    };
    if ($result) {
        $response = array(
            'status' => 1,
            'message' => 'Success',
            'data' => $result
        );
    } else {
        $response = array(
            'status' => 0,
            'message' => 'No Data Found',
        );
    }
    header('Content-Type: application/json');
    echo json_encode($response);
}

// Fungsi untuk insert buku
function insert_buku()
{
    global $conn;
    $check = array(
        'id' => '', 
        'judul' => '', 
        'penulis' => '',
        'rating' => '',
        'harga' => '');
    $check_match = count(array_intersect_key($_POST, $check));
    $id = $_POST["id"];
    $judul = $_POST["judul"];
    $penulis = $_POST["penulis"];
    $rating = $_POST["rating"];
    $harga = $_POST["harga"];
    if($check_match == count($check)){
        $result = mysqli_query($conn, "INSERT INTO buku SET
        id = '$id',
        judul = '$judul',
        penulis = '$penulis',
        rating = '$rating',
        harga = '$harga'");
        if($result) {
            $response = array(
                'status' => 1,
                'message' =>'Insert Success'
            );
        }
        else {
            $response = array(
                'status' => 0,
                'message' =>'Insert Failed.'
            );
        }
    } else {
        $response = array(
        'status' => 0,
        'message' =>'Wrong Parameter');
    }
    header('Content-Type: application/json');
    echo json_encode($response);
}

// Fungsi untuk update buku
function update_buku() 
{
    global $conn;
    if (!empty($_GET["id"])) {
        $id = $_GET["id"];
        $check = array(
            'judul' => '', 
            'penulis' => '',
            'rating' => '',
            'harga' => '');
        $check_match = count(array_intersect_key($_POST, $check));
        $judul = $_POST["judul"];
        $penulis = $_POST["penulis"];
        $rating = $_POST["rating"];
        $harga = $_POST["harga"];
        if($check_match == count($check)) {
            $result = mysqli_query($conn, "UPDATE buku SET judul = '$judul',penulis = '$penulis',rating = '$rating',harga = '$harga' WHERE id = '$id'");
            if($result) {
                $response=array(
                    'status' => 1,
                    'message' =>'Update Success'
                );
            }
            else {
                $response=array(
                    'status' => 0,
                    'message' =>'Update Failed'
                );
            }
        } else {
            $response=array(
                'status' => 0,
                'message' =>'Wrong Parameter',
                'data'=> $id
            );
        }
    } else {
        $response = array(
            'status' => 0,
            'message' => 'Please provide an id'
        );
    }
    header('Content-Type: application/json');
    echo json_encode($response);
}

// Fungsi untuk delete buku
function delete_buku() 
{
    global $conn;
    if (!empty($_POST['id'])) {
        $id = $_POST['id'];
        $queryDelete = "DELETE FROM buku WHERE id=" . $id;
        mysqli_query($conn, $queryDelete);
        if (mysqli_affected_rows($conn) > 0) {
            $response = array(
                'status' => 1,
                'message' => 'Delete Success'
            );
        } else {
            $response = array(
                'status' => 0,
                'message' => 'Delete Failed'
            );
        }
    } else {
        $response = array(
            'status' => 0,
            'message' => 'Please provide an id'
        );
    }
    header('Content-Type: application/json');
    echo json_encode($response);
}

?>


