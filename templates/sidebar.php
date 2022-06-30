  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4 bg-dark">
    <!-- Brand Logo -->
    <div class="brand-link text-center" style="border-color: transparent;">
      <span class="brand-text font-weight-light"> <img src="assets/gambar/logo-telkom.png" style="width: 30px;">  TELKOM AKSES</span>
    </div>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex "  style="border-color: #fff;">
        <div class="info">
          <a href="#" class="d-block text-white" style="font-size: 13px;">Selamat datang <?= $_SESSION['nama']; ?> - <?= $_SESSION['nik']; ?> - <?= $_SESSION['hak_akses']; ?> </a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="index.php" class="nav-link text-white">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          
          <?php if(($_SESSION['hak_akses'] == 'admin') || ($_SESSION['hak_akses'] == 'teknisi')) { ?>

          <li class="nav-header">Menu</li>
       <!--    <li class="nav-item">
            <a href="psb-index.php" class="nav-link text-white">
              <i class="nav-icon fas fa-arrow-right"></i>
              <p>
                Pasang Baru
              </p>
            </a>
          </li> -->
          <?php } ?>
      
          <?php if(($_SESSION['hak_akses'] == 'admin') || ($_SESSION['hak_akses'] == 'teknisi')
           || ($_SESSION['hak_akses'] == 'pelanggan')
         ) { ?>

           <li class="nav-item">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-folder-open"></i>
              <p>
                Menu
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview " style="display: none;">
               <?php if($_SESSION['hak_akses'] == 'admin') { ?>
              <li class="nav-item">
            <a href="pendaftaran-index.php" class="nav-link ">
              <i class="nav-icon far fa-circle"></i>
              <p>
                Pendaftaran
              </p>
            </a>
          </li>
           <?php } else if($_SESSION['hak_akses'] == 'pelanggan') { ?>
              <li class="nav-item">
            <a href="notifikasi-index.php" class="nav-link ">
              <i class="nav-icon far fa-circle"></i>
              <p>
                Notifikasi
              </p>
            </a>
          </li>
           <?php } ?>

          <?php if($_SESSION['hak_akses'] == 'admin') { ?>
          <li class="nav-item">
            <a href="pemasangan-index.php" class="nav-link ">
              <i class="nav-icon far fa-circle"></i>
              <p>
                Pemasangan
              </p>
            </a>
          </li>
           <?php } else if($_SESSION['hak_akses'] == 'teknisi') {?> 


            <li class="nav-item">
            <a href="pemasangan-index-teknisi.php" class="nav-link ">
              <i class="nav-icon far fa-circle"></i>
              <p>
                Pemasangan
              </p>
            </a>
          </li> 
        <?php } else if($_SESSION['hak_akses'] == 'pelanggan') {?> 


            <li class="nav-item">
            <a href="lihat-progres-index.php" class="nav-link ">
              <i class="nav-icon far fa-circle"></i>
              <p>
                Lihat Progres
              </p>
            </a>
          </li>

           <?php } ?>

          <?php if($_SESSION['hak_akses'] == 'admin') { ?>
          <li class="nav-item">
            <a href="reqconfig-index.php" class="nav-link">
              <i class="nav-icon far fa-circle"></i>
              <p>
                Req. Config
              </p>
            </a>
          </li>
           <?php } else if ($_SESSION['hak_akses'] == 'pelanggan') {?> 
          <li class="nav-item">
            <a href="pengajuan-migrasi-index.php" class="nav-link">
              <i class="nav-icon far fa-circle"></i>
              <p>
                Pengajuan Migrasi
              </p>
            </a>
          </li>

             <?php } ?>
            </ul>
          </li> 
           <?php if($_SESSION['hak_akses'] == 'admin') { ?>
             <li class="nav-item">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-folder-open"></i>
              <p>
                Master
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview " style="display: none;">
              <li class="nav-item">
            <a href="pelanggan-index.php" class="nav-link ">
              <i class="nav-icon far fa-circle"></i>
              <p>
                Pelanggan
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="karyawan-index.php" class="nav-link ">
              <i class="nav-icon far fa-circle"></i>
              <p>
                Karyawan
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="paket-index.php" class="nav-link ">
              <i class="nav-icon far fa-circle"></i>
              <p>
                Paket
              </p>
            </a>
          </li>
            </ul>
          </li> 
          <?php } ?>

          <?php if($_SESSION['hak_akses'] == 'admin') { ?>
          <li class="nav-header">Data</li>
          <li class="nav-item">
            <a href="laporan-index.php" class="nav-link text-white">
              <i class="nav-icon fab fa-flipboard"></i>
              <p>
                Laporan
              </p>
            </a>
          </li>
         <?php } ?>
           <?php } ?>


<!-- // pelanggan  -->

          <?php if(($_SESSION['hak_akses'] == 'pelanggan') and ($_SESSION['nik'] != '')) { ?>

          <li class="nav-header">Data</li>
          <li class="nav-item">
            <a href="laporan-index.php" class="nav-link text-white">
              <i class="nav-icon fab fa-flipboard"></i>
              <p>
                Cetak Riwayat Transaksi
              </p>
            </a>
          </li>
         <?php } ?>


        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>