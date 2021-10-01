<?php 

require_once('connection.php');
if (function_exists($_GET['function'])) {
    $_GET['function']();
}

// Fungsi untuk get seluruh pengguna
function get_pengguna()
{
    global $conn;
    $query = mysqli_query($conn, "SELECT * FROM pengguna");
    $result = array();
    while ($row = mysqli_fetch_array($query)) {
        array_push($result, array(
            'id_user' => $row['id_user'],
            'username' => $row['username'],
            'password' => $row['password'],
            'email' => $row['email'],
            'nama' => $row['nama'],
            'alamat' => $row['alamat'],
            'gambar' => $row['gambar']
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


// Fungsi untuk get pengguna berdasarkan id
function get_pengguna_id()
{
    global $conn;
    $id_user =  $_GET['id_user'];
    $query = mysqli_query($conn, "SELECT * FROM pengguna WHERE id_user=" . $id_user);
    $result = array();
    while ($row = $query->fetch_assoc()) {
        $result = array(
            'id_user' => $row['id_user'],
            'username' => $row['username'],
            'password' => $row['password'],
            'email' => $row['email'],
            'nama' => $row['nama'],
            'alamat' => $row['alamat'],
            'gambar' => $row['gambar']
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

// Fungsi untuk insert pengguna
function insert_pengguna()
{
    global $conn;
    $check = array(
        'id_user' => '',
        'username' => '',
        'password' => '',
        'email' => '',
        'nama' => '',
        'alamat' => '',
        'gambar' => '');
    $check_match = count(array_intersect_key($_POST, $check));
    $id_user = $_POST["id_user"];
    $username = $_POST["username"];
    $password = $_POST["password"];
    $email = $_POST["email"];
    $nama = $_POST["nama"];
    $alamat = $_POST["alamat"];
    $gambar = $_POST["gambar"];
    if($check_match == count($check)){
        $result = mysqli_query($conn, "INSERT INTO pengguna SET
        id_user = '$id_user',
        username = '$username',
        password = '$password',
        email = '$email',
        nama = '$nama',
        alamat = '$alamat',
        gambar = '$gambar'");
        if($result) {
            $response = array(
                'status' => 1,
                'message' =>'Insert user success!'
            );
        }
        else {
            $response = array(
                'status' => 0,
                'message' =>'Insert user fail!'
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

// Fungsi untuk update pengguna
function update_pengguna() 
{
    global $conn;
    if (!empty($_POST["id_user"])) {
        $check = array(
            'id_user' => '',
            'username' => '',
            'password' => '',
            'email' => '',
            'nama' => '',
            'alamat' => '',
            'gambar' => '');
        $check_match = count(array_intersect_key($_POST, $check));
        $id_user = $_POST["id_user"];
        $username = $_POST["username"];
        $password = $_POST["password"];
        $email = $_POST["email"];
        $nama = $_POST["nama"];
        $alamat = $_POST["alamat"];
        $gambar = $_POST["gambar"];
        if($check_match == count($check)) {
            $result = mysqli_query($conn, "UPDATE pengguna SET 
            username = '$username',
            password = '$password',
            email = '$email',
            nama = '$nama',
            alamat = '$alamat',
            gambar = '$gambar'
            WHERE id_user = '$id_user'");
            if($result) {
                $response=array(
                    'status' => 1,
                    'message' =>'Update user success!'
                );
            }
            else {
                $response=array(
                    'status' => 0,
                    'message' =>'Update user fail!'
                );
            }
        } else {
            $response=array(
                'status' => 0,
                'message' =>'Wrong Parameter',
                'data'=> $id_user
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

// Fungsi untuk delete pengguna
function delete_pengguna() 
{
    global $conn;
    if (!empty($_POST['id_user'])) {
        $id_user = $_POST['id_user'];
        $queryDelete = "DELETE FROM pengguna WHERE id_user=" . $id_user;
        mysqli_query($conn, $queryDelete);
        if (mysqli_affected_rows($conn) > 0) {
            $response = array(
                'status' => 1,
                'message' => 'Delete user success!'
            );
        } else {
            $response = array(
                'status' => 0,
                'message' => 'Delete user fail!'
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


function login_pengguna(){
    global $conn;
    if ($_POST) {
        // $username = mysqli_real_escape_string($conn,$_POST["username"]);
        // $password = mysqli_real_escape_string($conn,$_POST["password"]);
        $username = $_POST["username"];
        $password = $_POST["password"];
        $sql = "SELECT * FROM pengguna WHERE username = '$username' and password = '$password'";
        $query = mysqli_query($conn, $sql);
        $count = mysqli_num_rows($query);
        $result = array();
        if ($count > 0) {
            while ($row = mysqli_fetch_array($query)) {
                array_push($result, array(
                    'id_user' => $row['id_user'],
                    'username' => $row['username'],
                    'password' => $row['password'],
                    'email' => $row['email'],
                    'nama' => $row['nama'],
                    'alamat' => $row['alamat'],
                    'gambar' => $row['gambar']
                ));
            }
        }
        if ($result) {
            $response = array(
                'status' => 1,
                'message' => 'Login berhasil',
                'data' => $result
            );
        } else {
            $response = array(
                'status' => 0,
                'message' => 'Username atau password Anda salah!',
            );
        }
    } else {
        $response = array(
            'status' => -1,
            'message' => 'Silakan input username dan password Anda!',
        );
    }
    header('Content-Type: application/json');
    echo json_encode($response);
}

?>



