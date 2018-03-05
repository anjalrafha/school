
Partial Class Admin_MarkSeletClass
    Inherits System.Web.UI.Page



   
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("IDLevel") = Request.QueryString("IDLevel")
        Session("ClassID") = DropDownList1.SelectedValue
        Session("StudentIDNat") = DropDownList2.SelectedValue
        Session("StuName") = DropDownList2.SelectedItem.Text
        Response.Redirect("MarkAdd.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("IDLevel") Is Nothing Then
            Response.Redirect("Levels.aspx")
        End If
    End Sub
End Class
