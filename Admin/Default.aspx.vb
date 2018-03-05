
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox1.Text = "" Then
            Label1.Text = "إدخل كلمة المرور"
            Exit Sub
        ElseIf TextBox1.Text = "1234" Then
            Session("LogOK") = "OK"
            Session.Timeout = 120

            Response.Redirect("ClassAdmin.aspx")

        Else
            Label1.Text = "خطأ"
            Exit Sub
        End If
    End Sub
End Class
