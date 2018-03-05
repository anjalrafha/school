
Partial Class Admin_ClassAdmin
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

    Protected Sub GridView1_RowUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdatedEventArgs) Handles GridView1.RowUpdated
        If e.Exception Is Nothing Then

            Lbmsg.Text = "تمت الإضافة بنجاح"
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
End Class
