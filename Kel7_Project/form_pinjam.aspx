<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="form_pinjam.aspx.vb" Inherits="Kel7_Project.form_pinjam" %>
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
    <link rel="icon" href="dist/assets/images/favicon.ico" type="image/x-icon">

    <!-- vendor css -->
    <link rel="stylesheet" href="dist/assets/css/style.css">
    <link href="dist/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body class="">
    <form id="form1" runat="server">
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


                <ul class="nav pcoded-inner-navbar ">
                    <li class="nav-item pcoded-menu-caption">
                        <label>Navigation</label>
                    </li>
                    <li class="nav-item">
                        <a href="Dashboard.aspx" class="nav-link "><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
                    </li>
                    
                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item">
					    <a href="vw_kendaraan.aspx" class="nav-link "><span class="pcoded-micon"><i class="feather icon-align-justify"></i></span><span class="pcoded-mtext">Kendaraan</span></a>
					</li>
                    <li class="nav-item">
					    <a href="vw_pinjam.aspx" class="nav-link "><span class="pcoded-micon"><i class="feather icon-align-justify"></i></span><span class="pcoded-mtext">Daftar Peminjaman</span></a>
					</li>
                    <li class="nav-item">
					    <a href="Login.aspx" class="nav-link "><span class="pcoded-micon"><i class="feather icon-log-out m-r-5"></i></span><span class="pcoded-mtext">Logout</span></a>
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
                <img src="dist/assets/images/logo.png" alt="" class="logo">
                <img src="dist/assets/images/logo-icon.png" alt="" class="logo-thumb">
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
                                <!-- <div class="col-auto">
                                    <img src="dist/assets/images/mobil/default.png" style="width:400px" class="img-thumbnail">
                                </div> -->
                                <div class="col mr-2">
                                    <div class="card-body">
                                            <input type="hidden" name="id" value="<?= $ikan['id']; ?>">
                                            <div class="form-group">
                                                <label for="nama">Nama Peminjam</label>
                                                <asp:TextBox ID="nama" class="form-control" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="nama" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label for="tanggal_pinjam">Tanggal Pinjam</label>
                                                <asp:TextBox ID="tanggal_pinjam" class="form-control" TextMode="Date" runat="server"></asp:TextBox>   
                                            </div>
                                            <div class="form-group">
                                                <label for="jam_pinjam">Jam Pinjam</label>
                                                <asp:TextBox ID="jam_pinjam" class="form-control" runat="server"></asp:TextBox> 
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="jam_pinjam"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label for="tanggal_kembali">Tanggal Kembali</label>
                                                <asp:TextBox ID="tanggal_kembali" class="form-control" TextMode="Date" runat="server"></asp:TextBox>   
                                            </div>
                                            <div class="form-group">
                                                <label for="jam_kembali">Jam Kembali</label>
                                                <asp:TextBox ID="jam_kembali" class="form-control" runat="server"></asp:TextBox>   
                                            </div>
                                            <div class="form-group">
                                                <label for="tujuan">Tujuan</label>
                                                <asp:TextBox ID="tujuan" class="form-control" runat="server"></asp:TextBox>                                            </div>
                                            <div class="form-group">
                                                <label for="lokasi">Lokasi</label>
                                                <asp:TextBox ID="lokasi" class="form-control" runat="server"></asp:TextBox>                                            </div>
                                            <div class="form-group">
                                                <label for="pengemudi">Pengemudi</label>
                                                <asp:TextBox ID="pengemudi" class="form-control" runat="server"></asp:TextBox>
                                            <div class="form-group">
                                                <label for="penumpang">Penumpang</label>
                                                <asp:TextBox ID="penumpang" class="form-control" runat="server"></asp:TextBox>    
                                            </div>
                                            <a><asp:Button ID="tutup" class="btn btn-danger" runat="server" Text="Tutup" /></a>
                                            <asp:Button ID="pinjam" class="btn btn-primary float-right" runat="server" Text="Ajukan Peminjaman" />    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_peminjaman_mobilConnectionString %>" DeleteCommand="DELETE FROM [peminjaman] WHERE [Id] = @Id" InsertCommand="INSERT INTO [peminjaman] ([nama_peminjam], [tanggal_pinjam], [jam_pinjam], [tanggal_kembali], [jam_kembali], [tujuan], [lokasi], [pengemudi], [penumpang], [status]) VALUES (@nama_peminjam, @tanggal_pinjam, @jam_pinjam, @tanggal_kembali, @jam_kembali, @tujuan, @lokasi, @pengemudi, @penumpang, @status)" SelectCommand="SELECT * FROM [peminjaman]" UpdateCommand="UPDATE [peminjaman] SET [nama_peminjam] = @nama_peminjam, [tanggal_pinjam] = @tanggal_pinjam, [jam_pinjam] = @jam_pinjam, [tanggal_kembali] = @tanggal_kembali, [jam_kembali] = @jam_kembali, [tujuan] = @tujuan, [lokasi] = @lokasi, [pengemudi] = @pengemudi, [penumpang] = @penumpang, [status] = @status WHERE [Id] = @Id" ProviderName="System.Data.SqlClient">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="nama" Name="nama_peminjam" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tanggal_pinjam" DbType="Date" Name="tanggal_pinjam" PropertyName="Text" />
                            <asp:ControlParameter ControlID="jam_pinjam" Name="jam_pinjam" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tanggal_kembali" DbType="Date" Name="tanggal_kembali" PropertyName="Text" />
                            <asp:ControlParameter ControlID="jam_kembali" Name="jam_kembali" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tujuan" Name="tujuan" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="lokasi" Name="lokasi" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="pengemudi" Name="pengemudi" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="penumpang" Name="penumpang" PropertyName="Text" Type="String" />
                            <asp:Parameter DefaultValue="Diproses" Name="status" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nama_peminjam" Type="String" />
                            <asp:Parameter DbType="Date" Name="tanggal_pinjam" />
                            <asp:Parameter Name="jam_pinjam" Type="String" />
                            <asp:Parameter DbType="Date" Name="tanggal_kembali" />
                            <asp:Parameter Name="jam_kembali" Type="String" />
                            <asp:Parameter Name="tujuan" Type="String" />
                            <asp:Parameter Name="lokasi" Type="String" />
                            <asp:Parameter Name="pengemudi" Type="String" />
                            <asp:Parameter Name="penumpang" Type="String" />
                            <asp:Parameter Name="status" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- Required Js -->
    <script src="dist/assets/js/vendor-all.min.js"></script>
    <script src="dist/assets/js/plugins/bootstrap.min.js"></script>
    <script src="dist/assets/js/pcoded.min.js"></script>

    <!-- Apex Chart -->
    <script src="dist/assets/js/plugins/apexcharts.min.js"></script>


    <!-- custom-chart js -->

    <script src="dist/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="dist/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="dist/assets/js/pages/dashboard-main.js"></script>
    <script src="dist/vendor/chart.js/Chart-min.js"></script>

    <!-- Page level custom scripts -->
    <script src="dist/js/demo/datatables-demo.js"></script>
    </form>
</body>

</html>
