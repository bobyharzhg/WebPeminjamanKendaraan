Public Class vw_pinjam
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub pinjam_Click(sender As Object, e As EventArgs) Handles pinjam.Click
        Response.Redirect("~/form_pinjam.aspx", True)
    End Sub
End Class