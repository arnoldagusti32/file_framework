<?php
$id_user = $_GET['id_user'];
$sql1 = mysqli_query($koneksi, "SELECT * FROM users WHERE id_user ='$id_user'");
$tampil = $sql1->fetch_assoc();

$hak_akses = $tampil['hak_akses'];
?>
<!-- START PAGE CONTENT-->
<div class="page-heading">
    <h1 class="page-title"><i class="sidebar-item-icon fa fa-users"></i> USERS</h1>
</div>
<div class="page-content fade-in-up">
    <div class="ibox">
        <div class="ibox-head">
            <div class="ibox-title">Ubah Users</div>
            <div class="ibox-tools">
                <a class="ibox-collapse"><i class="fa fa-minus"></i></a>
            </div>
        </div>
        <div class="ibox-body">
            <form method="POST" enctype="multipart/form-data">
                <div class="form-group">
                    <label>Username</label>
                    <input class="form-control" type="text" name="username" value="<?php echo $tampil['username']; ?>" required>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input class="form-control" type="password" name="password" value="<?php echo $tampil['password']; ?>" required>
                </div>
                <div class="form-group">
                    <label>Nama Lengkap</label>
                    <input class="form-control" type="text" name="nama" value="<?php echo $tampil['nama']; ?>">
                </div>
                <div class="form-group">
                    <input type="submit" name="simpan" value="Simpan" class="btn btn-primary">
                    <a href="?page=users" class="btn btn-danger"><i class="fa fa-times-circle font-14"></i> Cancel</a>
                </div>
            </form>
        </div>
    </div>
</div>
<?php
if (isset($_POST["simpan"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];
    $nama = $_POST["nama"];

    // $tgl_bid = $_POST["tgl_bid"];

    //     //merubah format tanggal untuk ke database
    //     $tgl_bid_format = date('Y-m-d H:i:s', strtotime($tgl_bid));
    $sql = mysqli_query($koneksi, "UPDATE users SET username='$username', password='$password', nama='$nama' WHERE id_user='$id_user'");

    if ($sql) {
?>
        <script type="text/javascript">
            alert("Data Berhasil Diubah !");
            window.location.href = "?page=users";
        </script>

    <?php
    } else {
    ?>
        <script type="text/javascript">
            alert("Gagal Diubah !");
            window.location.href = "?page=users";
        </script>

<?php
    }
}
?>