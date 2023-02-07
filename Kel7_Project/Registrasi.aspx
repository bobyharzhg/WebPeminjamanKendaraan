<!DOCTYPE html>
<script runat="server">

    Protected Sub registrasi_Click(sender As Object, e As EventArgs)
        If Not Request.Form("registrasi") Is Nothing Then
            SqlDataSource1.Insert()
        End If
        Response.Redirect("~/Login.aspx", True)
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>

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
	<!-- Favicon icon -->
	<link rel="icon" href="dist/assets/images/favicon.ico" type="image/x-icon">

	<!-- vendor css -->
	<link rel="stylesheet" href="dist/assets/css/style.css">
</head>
<body>
    <form id="form1" runat="server">
<!-- [ auth-signup ] start -->
<div class="auth-wrapper">
	<div class="auth-content text-center">
		<img src="dist/assets/images/logo.png" alt="" class="img-fluid mb-4">
		<div class="card borderless">
			<div class="row align-items-center text-center">
				<div class="col-md-12">
					<div class="card-body">
						<h4 class="f-w-400">Registrasi</h4>
						<hr>
						<div class="form-group mb-3">
							<label for="email">Email</label>
							<asp:TextBox ID="email" class="form-control" runat="server"></asp:TextBox>
						</div>
						<div class="form-group mb-4">
							<label for="password">Password</label>
							<asp:TextBox ID="password" class="form-control" TextMode ="password" runat="server"></asp:TextBox>
						</div>
						<asp:Button ID="registrasi" class="btn btn-primary btn-block mb-4" runat="server" Text="Registrasi" OnClick="registrasi_Click" />
						<hr>
						<p class="mb-2">Sudah punya akun? <a href="Login.aspx" class="f-w-400">Login
                            </a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- [ auth-signup ] end -->

<!-- Required Js -->
<script src="dist/assets/js/vendor-all.min.js"></script>
<script src="dist/assets/js/plugins/bootstrap.min.js"></script>

<script src="dist/assets/js/pcoded.min.js"></script>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_peminjaman_mobilConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [users] ([email], [password], [role]) VALUES (@email, @password, @role)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [email] = @email, [password] = @password, [role] = @role WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="email" Name="email" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="password" Name="password" PropertyName="Text" Type="String" />
                <asp:Parameter DefaultValue="user" Name="role" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>



    </form>



</body>

</html>
