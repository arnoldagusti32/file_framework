<!-- START PAGE CONTENT-->
<div class="page-heading">
    <h1 class="page-title"><i class="sidebar-item-icon fa fa-users"></i> Users</h1>
    <h3>
        <a href="?page=users&aksi=tambah" class="btn btn-primary m-r-5"><i class="fa fa-plus-circle font-14"></i> Tambah</a>
    </h3>
</div>
<div class="page-content fade-in-up">
    <div class="ibox">
        <div class="ibox-head">
            <div class="ibox-title">Data Users</div>
        </div>
        <div class="ibox-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover" id="example-table" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Nama</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>No</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Nama</th>
                            <th>Aksi</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <?php
                        $no = 1;
                        $sql = mysqli_query($koneksi, "SELECT * FROM users ORDER BY nama ASC");

                        while ($data = $sql->fetch_assoc()) {

                        ?>
                            <tr>
                                <td><?php echo $no++; ?></td>
                                <td><?php echo $data["username"]; ?></td>
                                <td><?php echo $data["password"]; ?></td>
                                <td><?php echo $data["nama"]; ?></td>
                                <td class="d-flex justify-content-center">
                                    <a href="?page=users&aksi=ubah&id_user=<?php echo $data['id_user']; ?>" class="btn btn-warning btn-sm m-r-5"><i class="fa fa-pencil font-14"></i> Ubah</a>
                                    <a href="?page=users&aksi=hapus&id_user=<?php echo $data['id_user']; ?>" class="btn btn-danger btn-sm m-r-5" onclick="return confirm('Apakah Anda Yakin Menghapus Data Ini ...???')"><i class="fa fa-trash font-14"></i> Hapus</a>
                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>