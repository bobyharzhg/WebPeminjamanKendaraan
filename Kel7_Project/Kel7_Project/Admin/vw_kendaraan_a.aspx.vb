Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Public Class vw_kendaraan_a
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim namas As String = nama.Text.ToString()
        Dim plats As String = plat.Text.ToString()
        Dim jenisss As String = jenis.Text.ToString()
        If FileUpload1.PostedFile IsNot Nothing AndAlso FileUpload1.PostedFile.FileName <> "" Then
            Dim imageSize As Byte() = New Byte(FileUpload1.PostedFile.ContentLength - 1) {}
            Dim uploadedImage__1 As HttpPostedFile = FileUpload1.PostedFile()
            uploadedImage__1.InputStream.Read(imageSize, 0, CInt(FileUpload1.PostedFile.ContentLength))
            Dim con As New SqlConnection
            Dim xCommand As New SqlCommand
            con.ConnectionString = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=db_peminjaman_mobil;Integrated Security=True"
            Dim cmd As New SqlCommand()
            cmd.CommandText = "INSERT INTO kendaraan(namaKendaraan,plat,jenis,gambar) VALUES (@namaKendaraan,@plat,@jenis,@gambar)"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con

            Dim namaKendaraan As New SqlParameter("@namaKendaraan", SqlDbType.VarChar, 50)
            namaKendaraan.Value = namas.ToString()
            cmd.Parameters.Add(namaKendaraan)

            Dim plat As New SqlParameter("@plat", SqlDbType.VarChar, 50)
            plat.Value = plats.ToString()
            cmd.Parameters.Add(plat)

            Dim jenis As New SqlParameter("@jenis", SqlDbType.VarChar, 50)
            jenis.Value = jenisss.ToString()
            cmd.Parameters.Add(jenis)

            Dim UploadedImage2 As New SqlParameter("@gambar", SqlDbType.Image, imageSize.Length)
            UploadedImage2.Value = imageSize
            cmd.Parameters.Add(UploadedImage2)

            con.Open()
            Dim result As Integer = cmd.ExecuteNonQuery()
            con.Close()
            If result > 0 Then

            End If
            GridView1.DataBind()
        End If
    End Sub
End Class