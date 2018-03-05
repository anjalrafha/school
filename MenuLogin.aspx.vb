
Partial Class MenuLogin
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        GridView2.DataSourceID = "SqlDataSource4"

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("StudentIDNat") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If
    End Sub
End Class
