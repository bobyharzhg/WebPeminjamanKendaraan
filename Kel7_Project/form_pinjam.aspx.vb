Public Class form_pinjam
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub tutup_Click(sender As Object, e As EventArgs) Handles tutup.Click
        Response.Redirect("~/vw_pinjam.aspx", True)
    End Sub

    Protected Sub pinjam_Click(sender As Object, e As EventArgs) Handles pinjam.Click
        If Not Request.Form("pinjam") Is Nothing Then
            SqlDataSource1.Insert()
        End If
        Response.Redirect("~/vw_pinjam.aspx", True)
    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub
End Class