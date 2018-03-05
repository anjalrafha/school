
Partial Class Admin_MarkAdd
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("StudentIDNat") Is Nothing Then
            Response.Redirect("Levels.aspx")
        End If

        LBStudentIDNat.Text = Session("StudentIDNat")
        LbStuName.Text = Session("StuName")

        On Error Resume Next
        SqlDataSource2.InsertParameters.Add("StudentIDNat", Session("StudentIDNat"))
        SqlDataSource2.InsertParameters.Add("IDLevel", Session("IDLevel"))
        SqlDataSource2.InsertParameters.Add("ClassID", Session("ClassID"))
        SqlDataSource2.InsertParameters.Add("MaterialName", DropDownList1.SelectedItem.Text)

    End Sub

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
End Class
