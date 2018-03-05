
Partial Class Admin_AdsNewsEdit
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
     
    End Sub

    Protected Sub DetailsView1_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
       
    End Sub

   
    Protected Sub DetailsView1_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        If e.Exception Is Nothing Then

            Lbmsg.Text = "تم الحفظ بنجاح"
            Lbmsg.ForeColor = Drawing.Color.Blue

        Else
            e.ExceptionHandled = True
         
            Lbmsg.Text = "إدخل البيانات بشكل صحيح، ولا تترك اي حقل فارغ"
            Lbmsg.ForeColor = Drawing.Color.Red

            Exit Sub
        End If
    End Sub
End Class
