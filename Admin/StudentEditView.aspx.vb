
Partial Class Admin_StudentEditView
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        If e.Exception Is Nothing Then

            Lbmsg.Text = "تم التعديل بنجاح"
            Lbmsg.ForeColor = Drawing.Color.Blue

        Else
            e.ExceptionHandled = True


            Lbmsg.Text = "إدخل البيانات بشكل صحيح، ولا تترك اي حقل فارغ"
            Lbmsg.ForeColor = Drawing.Color.Red

            Exit Sub
        End If
    End Sub

    Protected Sub DetailsView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewPageEventArgs) Handles DetailsView1.PageIndexChanging

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        SqlDataSource2.UpdateParameters("StudentClassID").DefaultValue = DropDownList1.SelectedValue

    End Sub

    
End Class
