﻿Public Class form_pinjam_a
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub tutup_Click(sender As Object, e As EventArgs) Handles tutup.Click
        Response.Redirect("~/vw_pinjam_a.aspx", True)
    End Sub
End Class