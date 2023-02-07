Imports System.Data.SqlClient

Public Class form_kendaraan
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub tutup_Click(sender As Object, e As EventArgs) Handles tutup.Click
        Response.Redirect("~/vw_kendaraan_a.aspx", True)
    End Sub

    Protected Sub tambah_Click(sender As Object, e As EventArgs) Handles tambah.Click
        Dim namas = nama.Text
        Dim plats = plat.Text
        Dim jenisss = jeniss.Text
        If FileUpload1.PostedFile IsNot Nothing AndAlso FileUpload1.PostedFile.FileName <> "" Then
            Dim imageSize As Byte() = New Byte(FileUpload1.PostedFile.ContentLength - 1) {}
            Dim uploadedImage__1 As HttpPostedFile = FileUpload1.PostedFile()
            uploadedImage__1.InputStream.Read(imageSize, 0, CInt(FileUpload1.PostedFile.ContentLength))
            Dim con As New SqlConnection
            Dim xCommand As New SqlCommand
            con.ConnectionString = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=db_peminjaman_mobil;Integrated Security=True"
            Dim cmd As New SqlCommand()
            cmd.CommandText = "INSERT INTO kendaraan(namaKendaraan,plat,jenis,gambar) VALUES (@namas,@plats,@jenisss,@gambar)"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con
            Dim namak As New SqlParameter("@namaKendaraan", SqlDbType.VarChar, 50)
            namak.Value = namas
            cmd.Parameters.Add(namak)
            Dim platk As New SqlParameter("@plat", SqlDbType.VarChar, 50)
            platk.Value = plats
            cmd.Parameters.Add(platk)
            Dim jenisk As New SqlParameter("@jenis", SqlDbType.VarChar, 50)
            jenisk.Value = jenisss
            cmd.Parameters.Add(jenisk)
            Dim UploadedImage2 As New SqlParameter("@gambar", SqlDbType.Image, imageSize.Length)
            UploadedImage2.Value = imageSize
            cmd.Parameters.Add(UploadedImage2)
            con.Open()
            Dim result As Integer = cmd.ExecuteNonQuery()
            con.Close()
            If result > 0 Then
                Response.Redirect("~/vw_kendaraan_a.aspx", True)
            End If
        End If
    End Sub
End Class