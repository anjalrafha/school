<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="ClassAdmin.aspx.vb" Inherits="Admin_ClassAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style3">
    <tr>
        <td align="center" bgcolor="#F2F2F2">
            <asp:Label ID="Lbmsg" runat="server" Text="إدارة الصفوف"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                CellPadding="2" CellSpacing="2" DataKeyNames="ClassID" 
                DataSourceID="SqlDataSource1" DefaultMode="Insert" EnableModelValidation="True" 
                GridLines="None" Height="50px" Width="500px">
                <FieldHeaderStyle HorizontalAlign="Left" Width="200px" />
                <Fields>
                    <asp:BoundField DataField="ClassID" HeaderText="ClassID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ClassID" />
                    <asp:TemplateField HeaderText="السم الصف/ الفصل" SortExpression="ClassName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ClassName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ClassName") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("ClassName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="عدد الطلاب - رقم" SortExpression="ClassStuCoun">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ClassStuCoun") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ClassStuCoun") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ClassStuCoun") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="الجنس- ذكور / إناث/ مختلط" 
                        SortExpression="ClassType">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ClassType") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ClassType") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ClassType") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <InsertItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                CommandName="Insert" 
                                style="font-size: medium; font-family: Tahoma" Text="إضافة" />
                            &nbsp;
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [TaClass] WHERE [ClassID] = @ClassID" 
                InsertCommand="INSERT INTO [TaClass] ([ClassName], [ClassStuCoun], [ClassType]) VALUES (@ClassName, @ClassStuCoun, @ClassType)" 
                SelectCommand="SELECT * FROM [TaClass] ORDER BY [ClassID] DESC" 
                UpdateCommand="UPDATE [TaClass] SET [ClassName] = @ClassName, [ClassStuCoun] = @ClassStuCoun, [ClassType] = @ClassType WHERE [ClassID] = @ClassID">
                <DeleteParameters>
                    <asp:Parameter Name="ClassID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ClassName" Type="String" />
                    <asp:Parameter Name="ClassStuCoun" Type="Int32" />
                    <asp:Parameter Name="ClassType" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ClassName" Type="String" />
                    <asp:Parameter Name="ClassStuCoun" Type="Int32" />
                    <asp:Parameter Name="ClassType" Type="String" />
                    <asp:Parameter Name="ClassID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="right" bgcolor="#F2F2F2">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="ClassID" DataSourceID="SqlDataSource1" 
                EmptyDataText="لا يوجد اي صفوف او فصول مدخلة" EnableModelValidation="True" 
                Width="100%">
                <Columns>
                    <asp:BoundField DataField="ClassID" HeaderText="الرقم" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ClassID" />
                    <asp:BoundField DataField="ClassName" HeaderText="اسم الصف / الفصل" 
                        SortExpression="ClassName" />
                    <asp:BoundField DataField="ClassStuCoun" HeaderText="عدد الطلاب" 
                        SortExpression="ClassStuCoun" />
                    <asp:BoundField DataField="ClassType" HeaderText="الجنس" 
                        SortExpression="ClassType" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="حفظ"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="الغاء"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                CommandName="Edit" Font-Underline="False" Text="تعديل"></asp:LinkButton>
                            &nbsp; &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                CommandName="Delete" Font-Underline="False" ForeColor="Red" 
                                onclientclick="return confirm('هل تريد حقاً الحذف؟')" Text="حذف"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="False" 
                                NavigateUrl='<%# Eval("ClassID", "Material.aspx?ClassID={0}") %>'>إدارة المواد</asp:HyperLink>
                        </ItemTemplate>
                        <ItemStyle BackColor="#FFFFCC" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="False" 
                                NavigateUrl='<%# Eval("ClassID", "Students.aspx?ClassID={0}") %>'>إدارة الطلاب</asp:HyperLink>
                        </ItemTemplate>
                        <ItemStyle BackColor="#FFFFCC" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#336600" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

