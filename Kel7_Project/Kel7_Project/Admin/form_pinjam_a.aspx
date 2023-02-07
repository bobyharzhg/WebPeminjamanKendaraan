<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="form_pinjam_a.aspx.vb" Inherits="Kel7_Project.form_pinjam_a" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Kendaraan PCR</title>
    <!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 11]>
    	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    	<![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />
    <!-- Favicon icon IKON DI TITLE-->
    <link rel="icon" href="../dist/assets/images/favicon.ico" type="image/x-icon">

    <!-- vendor css -->
    <link rel="stylesheet" href="../dist/assets/css/style.css">
    <link href="../dist/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body class="">
    <!-- [ Pre-loader ] start -->
    <div class="loader-bg">
        <div class="loader-track">
            <div class="loader-fill"></div>
        </div>
    </div>
    <!-- [ Pre-loader ] End -->
    <!-- [ navigation menu ] start -->
    <nav class="pcoded-navbar  ">
        <div class="navbar-wrapper  ">
            <div class="navbar-content scroll-div ">

                <div class="">
                    <div class="main-menu-header">
                        <img class="img-radius" src="../dist/assets/images/profile/default.jpg" alt="User-Profile-Image">
                        <div class="user-details">
                            <span>Email</span>
                        </div>
                    </div>
                </div>

                <ul class="nav pcoded-inner-navbar ">
                    <li class="nav-item pcoded-menu-caption">
                        <label>Navigation</label>
                    </li>
                    <li class="nav-item">
                        <a href="../Dashboard.aspx" class="nav-link "><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
                    </li>
                    
                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item">
					    <a href="vw_kendaraan_a.aspx" class="nav-link "><span class="pcoded-micon"><i class="feather icon-align-justify"></i></span><span class="pcoded-mtext">Kendaraan</span></a>
					</li>
                    <li class="nav-item">
					    <a href="vw_pinjam_a.aspx" class="nav-link "><span class="pcoded-micon"><i class="feather icon-align-justify"></i></span><span class="pcoded-mtext">Daftar Peminjaman</span></a>
					</li>
                    <li class="nav-item">
					    <a href="../Login.aspx" class="nav-link "><span class="pcoded-micon"><i class="feather icon-log-out m-r-5"></i></span><span class="pcoded-mtext">Logout</span></a>
					</li>
        </div>
    </nav>
    <!-- [ navigation menu ] end -->
    <!-- [ Header ] start -->
    <header class="navbar pcoded-header navbar-expand-lg navbar-light header-dark">
        <div class="m-header">
            <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
            <a href="#!" class="b-brand">
                <!-- ========   change your logo hear   ============ -->
                <img src="../dist/assets/images/logo.png" alt="" class="logo">
                <img src="../dist/assets/images/logo-icon.png" alt="" class="logo-thumb">
            </a>
            <a href="#!" class="mob-toggler">
                <i class="feather icon-more-vertical"></i>
            </a>
        </div>
    </header>
    <!-- [ Header ] end -->
<!-- [ Main Content ] start -->
<div class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <!-- Begin Page Content -->
        <div class="container-fluid">
            <h1 class="h3 mb-4 text-gray-800"><?php echo $judul; ?></h1>
            <div class="row">
                <div class="col-xl-12 col-md-12 mb-6">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <img src="../dist/assets/images/mobil/default.png" style="width:400px" class="img-thumbnail">
                                </div>
                                <div class="col mr-2">
                                    <div class="card-body">
                                        <form id="form1" runat="server">
                                            <input type="hidden" name="id" value="<?= $ikan['id']; ?>">
                                            <div class="form-group">
                                                <label for="nama">Nama Peminjam</label>
                                                <input type="text" name="Nama Peminjam" value="" class="form-control" readonly id="nama" placeholder="Nama Peminjam">
                                            </div>
                                            <div class="form-group">
                                                <label for="tanggal_pinjam">Tanggal Pinjam</label>
                                                <input type="date" name="Tanggal Pinjam" value="" class="form-control" readonly id="tanggal_pinjam" placeholder="Tanggal Pinjam">
                                            </div>
                                            <div class="form-group">
                                                <label for="jam_pinjam">Jam Pinjam</label>
                                                <input type="time" name="Jam Pinjam" value="" class="form-control"  readonly id="jam_pinjam" placeholder="Jam Pinjam">
                                            </div>
                                            <div class="form-group">
                                                <label for="tanggal_kembali">Tanggal Kembali</label>
                                                <input type="date" name="Tanggal Kembali" value="" class="form-control"  readonly id="tanggal_kembali" placeholder="Tanggal Kembali">
                                            </div>
                                            <div class="form-group">
                                                <label for="jam_kembali">Jam Kembali</label>
                                                <input type="time" name="Jam Kembali" value="" class="form-control" readonly id="jam_kembali" placeholder="Jam Kembali">
                                            </div>
                                            <div class="form-group">
                                                <label for="tujuan">Tujuan</label>
                                                <input type="text" name="Tujuan" value="" class="form-control" readonly id="tujuan" placeholder="Tujuan">
                                            </div>
                                            <div class="form-group">
                                                <label for="lokasi">Lokasi</label>
                                                <input type="text" name="Lokasi" value="" class="form-control"  readonly id="lokasi" placeholder="Lokasi">
                                            </div>
                                            <div class="form-group">
                                                <label for="pengemudi">Pengemudi</label>
                                                <input type="text" name="Pengemudi" value="" class="form-control" readonly id="pengemudi" placeholder="Pengemudi">
                                            </div>
                                            <div class="form-group">
                                                <label for="status">Status</label>
                                                &nbsp;<asp:DropDownList ID="status" class="form-control" runat="server">
                                                    <asp:ListItem>Ditolak</asp:ListItem>
                                                    <asp:ListItem>Diproses</asp:ListItem>
                                                    <asp:ListItem>Disetujui</asp:ListItem>
                                                    <asp:ListItem>Selesai</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <a><asp:Button ID="tutup" class="btn btn-danger" runat="server" Text="Tutup" /></a>
                                            <asp:Button ID="ubah" class="btn btn-primary float-right" runat="server" Text="Ubah data" />    
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- Required Js -->
    <script src="../dist/assets/js/vendor-all.min.js"></script>
    <script src="../dist/assets/js/plugins/bootstrap.min.js"></script>
    <script src="../dist/assets/js/pcoded.min.js"></script>

    <!-- Apex Chart -->
    <script src="../dist/assets/js/plugins/apexcharts.min.js"></script>


    <!-- custom-chart js -->

    <script src="../dist/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../dist/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="../dist/assets/js/pages/dashboard-main.js"></script>
    <script src="../dist/vendor/chart.js/Chart-min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../dist/js/demo/datatables-demo.js"></script>
</body>

</html>