Imports System.Data.SqlClient
Public Class logins
    Inherits System.Web.UI.Page
    Public con As SqlConnection
    Public adp As SqlDataAdapter
    Public rd As SqlDataReader
    Public cmd As SqlCommand
    Public ds As DataSet

    Public mydb As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        mydb = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=db_peminjaman_mobil;Integrated Security=True"
        con = New SqlConnection(mydb)
        If con.State = ConnectionState.Closed Then con.Open()
    End Sub

    Protected Sub login_Click(sender As Object, e As EventArgs) Handles login.Click
        If email.Text = "" Or password.Text = "" Then
            MsgBox("Silahkan isi kode admin dan password !")
        Else
            cmd = New SqlCommand("Select * from users where email = '" & email.Text & "' and password ='" & password.Text & "'", con)
            rd = cmd.ExecuteReader
            rd.Read()


            If Not rd.HasRows Then
                MsgBox("Email atau password salah")
            Else
                rd.Close()
                cmd = New SqlCommand("Select role from users where email = '" & email.Text & "' and password ='" & password.Text & "' and role ='user'", con)
                rd = cmd.ExecuteReader

                If rd.HasRows Then
                    Response.Redirect("~/Dashboard.aspx", True)
                Else
                    Response.Redirect("~/Dashboard_a.aspx", True)
                End If
                rd.Close()
            End If
        End If
    End Sub
End Class