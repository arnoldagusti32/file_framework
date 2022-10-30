<?php
$id_user = $_GET['id_user'];
$sql = mysqli_query($koneksi, "DELETE FROM users WHERE id_user ='$id_user'");

if ($sql) {
?>
    <script type="text/javascript">
        alert("Data Berhasil Dihapus !");
        window.location.href = "?page=users";
    </script>
<?php
} else {
?>
    <script type="text/javascript">
        alert("Gagal Dihapus !");
        window.location.href = "?page=users";
    </script>
<?php
}
?>