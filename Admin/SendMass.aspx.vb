
Partial Class Admin_SendMass
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        If e.Exception Is Nothing Then

            Lbmsg.Text = "تمت الإضافة بنجاح"
            Lbmsg.ForeColor = Drawing.Color.Blue

        Else
            e.ExceptionHandled = True
            e.KeepInInsertMode = True

            Lbmsg.Text = "إدخل البيانات بشكل صحيح، ولا تترك اي حقل فارغ"
            Lbmsg.ForeColor = Drawing.Color.Red

            Exit Sub
        End If
    End Sub

    Protected Sub DetailsView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewPageEventArgs) Handles DetailsView1.PageIndexChanging

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        SqlDataSource2.InsertParameters.Add("StudentIDNat", Request.QueryString("StudentIDNat"))
        SqlDataSource2.InsertParameters.Add("DateNote", Date.Now.ToString)
    End Sub
End Class
