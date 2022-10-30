<?php
// deklarasi parameter koneksi database
$server   = "localhost";
$username = "root";
$password = "";
$database = "db_lelang";

// koneksi database
$koneksi = mysqli_connect($server, $username, $password, $database);

// cek koneksi
if ($koneksi->connect_error) {
    die('Koneksi Database Gagal, Silahkan cek database terlebih dahulu : ' . $koneksi->connect_error);
}

date_default_timezone_set('Asia/Jakarta');
