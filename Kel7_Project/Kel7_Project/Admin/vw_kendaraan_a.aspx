<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="vw_kendaraan_a.aspx.vb" Inherits="Kel7_Project.vw_kendaraan_a" %>


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
        <div class="container-fluid">
            <!-- <h1 class="h3 mb--4 text-gray-800"><?php echo $judul; ?></h1>
            <div class="row">
                <div class="col-md-6"><a href="<?= base_url() ?>Ikan/tambah" class="btn btn-info mb-2">Tambah Data Ikan</a></div>
                <div class="col-md-12"> -->

            <div class="clearfix">
                <div class="float-left">
                    <h1 class="h3 mb--4 text-gray-800">Daftar Kendaraan</h1>
                </div>
                <!-- <div class="float-right">
                    <a href="<?= base_url() ?>Ikan/tambah" class="btn btn-info mb-2">Ajukan Peminjaman</a>
                </div> -->
            </div>
        </div>
        <div class="card shadow mb-4">
            <div class="card-body">
               
                Nama Kendaraan :
                <asp:TextBox ID="nama" runat="server"></asp:TextBox>
                <br />
                <br />
                Plat :
                <asp:TextBox ID="plat" runat="server"></asp:TextBox>
                <br />
                <br />
                Jenis :
                <asp:TextBox ID="jenis" runat="server"></asp:TextBox>
                <br />
                <br />
                Gambar :
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Button" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="namaKendaraan" HeaderText="namaKendaraan" SortExpression="namaKendaraan" />
                        <asp:BoundField DataField="plat" HeaderText="plat" SortExpression="plat" />
                        <asp:BoundField DataField="jenis" HeaderText="jenis" SortExpression="jenis" />
                        <asp:BoundField DataField="gambar" HeaderText="gambar" SortExpression="gambar" />
                <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Id", "HandlerKendaraan.ashx?Id={0}")%>'/>
                </ItemTemplate>

                </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_peminjaman_mobilConnectionString %>" DeleteCommand="DELETE FROM [kendaraan] WHERE [Id] = @Id" InsertCommand="INSERT INTO [kendaraan] ([Id], [namaKendaraan], [plat], [jenis], [gambar]) VALUES (@Id, @namaKendaraan, @plat, @jenis, @gambar)" SelectCommand="SELECT * FROM [kendaraan]" UpdateCommand="UPDATE [kendaraan] SET [namaKendaraan] = @namaKendaraan, [plat] = @plat, [jenis] = @jenis, [gambar] = @gambar WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="namaKendaraan" Type="String" />
                        <asp:Parameter Name="plat" Type="String" />
                        <asp:Parameter Name="jenis" Type="String" />
                        <asp:Parameter Name="gambar" Type="Object" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="namaKendaraan" Type="String" />
                        <asp:Parameter Name="plat" Type="String" />
                        <asp:Parameter Name="jenis" Type="String" />
                        <asp:Parameter Name="gambar" Type="Object" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
               <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
<Columns>
<asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="namaKendaraan" HeaderText="namaKendaraan" SortExpression="namaKendaraan" />
                        <asp:BoundField DataField="plat" HeaderText="plat" SortExpression="plat" />
                        <asp:BoundField DataField="jenis" HeaderText="jenis" SortExpression="jenis" />
<asp:TemplateField HeaderText="Gambar">
<ItemTemplate>
<asp:Image ID="Image1" runat="server"
ImageUrl='<%# Eval("Id", "HandlerKendaraan.ashx?Id={0}")%>'/>
</ItemTemplate>

</asp:TemplateField>
</Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"
ConnectionString="<%$ ConnectionStrings:db_peminjaman_mobilConnectionString %>"
SelectCommand="SELECT [Id], [namaKendaraan], [plat], [jenis], [gambar] FROM [kendaraan]" DeleteCommand="DELETE FROM [kendaraan] WHERE [Id] = @Id" InsertCommand="INSERT INTO [kendaraan] ([namaKendaraan], [plat], [jenis], [gambar]) VALUES (@namaKendaraan, @plat, @jenis, @gambar)" UpdateCommand="UPDATE [kendaraan] SET [namaKendaraan] = @namaKendaraan, [plat] = @plat, [jenis] = @jenis, [gambar] = @gambar WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="namaKendaraan" Type="String" />
        <asp:Parameter Name="plat" Type="String" />
        <asp:Parameter Name="jenis" Type="String" />
        <asp:Parameter Name="gambar" Type="Object" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="namaKendaraan" Type="String" />
        <asp:Parameter Name="plat" Type="String" />
        <asp:Parameter Name="jenis" Type="String" />
        <asp:Parameter Name="gambar" Type="Object" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
                </asp:SqlDataSource>
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
    </form>
</body>

</html>
