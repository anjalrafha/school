<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Students.aspx.vb" Inherits="Admin_Students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style3">
        <tr>
            <td align="center" bgcolor="#F2F2F2">
                <asp:Label ID="Lbmsg" runat="server" Text="إدارة الطلاب"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="Button2" runat="server" 
                    style="font-size: medium; font-family: Tahoma" Text="إضافة طالب" 
                    Width="329px" />
            </td>
        </tr>
        <tr>
            <td align="right">
    <table cellpadding="2" class="style3">
    <tr>
        <td align="right">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="StudentIDNat" DataSourceID="SqlDataSource1" 
                EmptyDataText="لا يوجد طلاب في هذا الصف" EnableModelValidation="True" 
                Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="الرقم الوطني" SortExpression="StudentIDNat">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("StudentIDNat") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("StudentIDNat") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="الأسم" SortExpression="StudentName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("StudentName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("StudentName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="تاريخ الميلاد" SortExpression="StudentBirth">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StudentBirth") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("StudentBirth") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="حذف"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="False" 
                                NavigateUrl='<%# Eval("StudentIDNat", "StudentEditView.aspx?StudentIDNat={0}") %>'>تعديل | تفاصيل</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" 
                                NavigateUrl='<%# Eval("StudentIDNat", "SendMass.aspx?StudentIDNat={0}") %>'>توجيه رسالة  |  إنذار |  عقوبة |  شكر| ملاحظة لولي الأمر</asp:HyperLink>
                        </ItemTemplate>
                        <ItemStyle BackColor="#FFFF99" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [TaStudent] WHERE [StudentIDNat] = @StudentIDNat" 
                InsertCommand="INSERT INTO [TaStudent] ([StudentIDNat], [StudentName], [StudentBirth], [StudentClassID], [StudentAddrss], [GuardianName], [GuardianPhone], [GuardianEmail]) VALUES (@StudentIDNat, @StudentName, @StudentBirth, @StudentClassID, @StudentAddrss, @GuardianName, @GuardianPhone, @GuardianEmail)" 
                SelectCommand="SELECT * FROM [TaStudent] WHERE ([StudentClassID] = @StudentClassID)" 
                UpdateCommand="UPDATE [TaStudent] SET [StudentName] = @StudentName, [StudentBirth] = @StudentBirth, [StudentClassID] = @StudentClassID, [StudentAddrss] = @StudentAddrss, [GuardianName] = @GuardianName, [GuardianPhone] = @GuardianPhone, [GuardianEmail] = @GuardianEmail WHERE [StudentIDNat] = @StudentIDNat">
                <DeleteParameters>
                    <asp:Parameter Name="StudentIDNat" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="StudentIDNat" Type="String" />
                    <asp:Parameter Name="StudentName" Type="String" />
                    <asp:Parameter Name="StudentBirth" Type="String" />
                    <asp:Parameter Name="StudentClassID" Type="Int32" />
                    <asp:Parameter Name="StudentAddrss" Type="String" />
                    <asp:Parameter Name="GuardianName" Type="String" />
                    <asp:Parameter Name="GuardianPhone" Type="String" />
                    <asp:Parameter Name="GuardianEmail" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="StudentClassID" QueryStringField="ClassID" 
                        Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StudentName" Type="String" />
                    <asp:Parameter Name="StudentBirth" Type="String" />
                    <asp:Parameter Name="StudentClassID" Type="Int32" />
                    <asp:Parameter Name="StudentAddrss" Type="String" />
                    <asp:Parameter Name="GuardianName" Type="String" />
                    <asp:Parameter Name="GuardianPhone" Type="String" />
                    <asp:Parameter Name="GuardianEmail" Type="String" />
                    <asp:Parameter Name="StudentIDNat" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
            </td>
        </tr>
        </table>
</asp:Content>

