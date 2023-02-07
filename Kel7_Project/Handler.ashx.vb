Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Public Class Handler : Implements IHttpHandler
    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand()

        con.ConnectionString = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Boby3TIE;Integrated Security=True"
        con.Open()
        cmd.CommandText = "Select namaKendaraan,gambar from kendaraan where Id =@Id"
        cmd.CommandType = System.Data.CommandType.Text
        cmd.Connection = con
        Dim ImageID As New SqlParameter("@Id", System.Data.SqlDbType.Int)
        ImageID.Value = context.Request.QueryString("Id")
        cmd.Parameters.Add(ImageID)
        Dim dReader As SqlDataReader = cmd.ExecuteReader()
        dReader.Read()
        context.Response.BinaryWrite(DirectCast(dReader("gambar"), Byte()))
        dReader.Close()
        con.Close()
    End Sub

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property
End Class