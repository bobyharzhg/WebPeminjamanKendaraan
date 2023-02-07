﻿<!DOCTYPE html>
<script runat="server">

    Protected Sub Button2_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub login_Click(sender As Object, e As EventArgs)
        If email.Text = "user@gmail.com" And password.Text = "12345" Then
            Response.Redirect("~/Dashboard.aspx", True)
        End If
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
	<link rel="icon" href="../dist/assets/images/favicon.ico" type="image/x-icon">

	<!-- vendor css -->
	<link rel="stylesheet" href="../dist/assets/css/style.css">
</head>
<body>
    <form id="form1" runat="server">
<!-- [ auth-signin ] start -->
<div class="auth-wrapper">
	<div class="auth-content text-center">
		<img src="../dist/assets/images/logo.png" alt="" class="img-fluid mb-4">
		<div class="card borderless">
			<div class="row align-items-center ">
				<div class="col-md-12">
					<div class="card-body">
						<h4 class="mb-3 f-w-400">Login</h4>
						<hr>
						<div class="form-group mb-3">
							<label for="email">Email</label>
							<asp:TextBox ID="email" class="form-control" runat="server"></asp:TextBox>
						</div>
						<div class="form-group mb-4">
							<label for="password">Password</label>
							<asp:TextBox ID="password" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
						</div>
						<asp:Button ID="login" class="btn btn-primary btn-block mb-4" runat="server" Text="Login" OnClick="login_Click" />
						<hr>
						<p class="mb-0 text-muted">Belum punya akun? <a href="Registrasi.aspx" class="f-w-400">Registrasi</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- [ auth-signin ] end -->

<!-- Required Js -->
<script src="../dist/assets/js/vendor-all.min.js"></script>
<script src="../dist/assets/js/plugins/bootstrap.min.js"></script>

<script src="../dist/assets/js/pcoded.min.js"></script>



    </form>



</body>

</html>
