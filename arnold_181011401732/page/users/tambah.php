<!-- START PAGE CONTENT-->
<div class="page-heading">
    <h1 class="page-title"><i class="sidebar-item-icon fa fa-users"></i> USERS</h1>
</div>
<div class="page-content fade-in-up">
    <div class="ibox">
        <div class="ibox-head">
            <div class="ibox-title">Tambah Users</div>
            <div class="ibox-tools">
                <a class="ibox-collapse"><i class="fa fa-minus"></i></a>
            </div>
        </div>
        <div class="ibox-body">
            <form method="POST">
                <div class="form-group">
                    <label>Username</label>
                    <input class="form-control" type="text" name="username" placeholder="Username" required>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input class="form-control" type="password" name="password" placeholder="Password" required>
                </div>
                <div class="form-group">
                    <label>Nama Lengkap</label>
                    <input class="form-control" type="text" name="nama" placeholder="Nama Lengkap">
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

    if ($upload) {

        $sql = mysqli_query($koneksi, "INSERT INTO users values(NULL,'$username','$password','$nama')");

        if ($sql) {
?>
            <script type="text/javascript">
                alert("Data Berhasil Disimpan !");
                window.location.href = "?page=users";
            </script>

        <?php
        } else {
        ?>
            <script type="text/javascript">
                alert("Gagal Disimpan !");
                window.location.href = "?page=users";
            </script>

        <?php
        }
    } else {
        ?>
        <script type="text/javascript">
            alert("Gagal Upload Foto!");
            window.location.href = "?page=users";
        </script>

<?php
    }
}
?>