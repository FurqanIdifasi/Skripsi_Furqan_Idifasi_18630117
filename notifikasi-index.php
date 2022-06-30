<?php
  include('templates/header.php');
  include('templates/sidebar.php');
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1> Notifikasi </h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

  </div>
  <!-- /.content-wrapper -->

  <?php
    include('templates/footer.php');
  ?>

  <?php
   if ((isset($_GET['status'])) && ($_GET['status'] == 'hapus')) {
      $id = $_GET['id']; //menampung id

      //query hapus
      $datas = mysqli_query($koneksi, "delete from pendaftaran where id ='$id'") or die(mysqli_error($koneksi));
      //alert dan redirect ke index.php


      echo "<script>alert('data berhasil dihapus.');window.location='pendaftaran-index.php';</script>";
   }
  ?>