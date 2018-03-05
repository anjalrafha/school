<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="StudentsAdd.aspx.vb" Inherits="Admin_StudentsAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            font-size: small;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style3">
        <tr>
            <td align="center" bgcolor="#F2F2F2">
                <asp:Label ID="Lbmsg" runat="server" Text="إضافة طالب"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <table cellpadding="2">
                    <tr>
                        <td>
                            حدد الصف:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="ClassName" 
                                DataValueField="ClassID" style="font-size: medium">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [ClassID], [ClassName] FROM [TaClass]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="2" CellSpacing="2" DataKeyNames="StudentIDNat" 
                    DataSourceID="SqlDataSource2" EnableModelValidation="True" Height="50px" 
                    Width="100%" DefaultMode="Insert" GridLines="None">
                    <FieldHeaderStyle ForeColor="#006600" HorizontalAlign="Left" Width="200px" />
                    <Fields>
                        <asp:TemplateField HeaderText="الرقم الوطني للطالب" 
                            SortExpression="StudentIDNat">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("StudentIDNat") %>'></asp:Label>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" style="font-size: medium" 
                                    Text='<%# Bind("StudentIDNat") %>' Width="250px"></asp:TextBox>
                                <span class="style4">ولي الأمر سيستعلم عن الطالب من خلاله</span>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("StudentIDNat") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="اسم الطالب" SortExpression="StudentName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("StudentName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("StudentName") %>' 
                                    Width="250px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("StudentName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="تاريخ الميلاد" SortExpression="StudentBirth">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("StudentBirth") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("StudentBirth") %>' 
                                    Width="250px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("StudentBirth") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="عنوان الطالب" SortExpression="StudentAddrss">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("StudentAddrss") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("StudentAddrss") %>' 
                                    Width="250px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("StudentAddrss") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="اسم ولي الأمر" SortExpression="GuardianName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("GuardianName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("GuardianName") %>' 
                                    Width="250px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("GuardianName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="هاتف ولي الأمر" SortExpression="GuardianPhone">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("GuardianPhone") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" style="font-size: medium" 
                                    Text='<%# Bind("GuardianPhone") %>' Width="250px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("GuardianPhone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="البريد الإلكتروني لولي الأمر" 
                            SortExpression="GuardianEmail">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("GuardianEmail") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("GuardianEmail") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("GuardianEmail") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                    CommandName="Insert" style="font-size: medium; font-family: Tahoma" 
                                    Text="إضافة" />
                                &nbsp;
                            </InsertItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [TaStudent] WHERE [StudentIDNat] = @StudentIDNat" 
                    InsertCommand="INSERT INTO [TaStudent] ([StudentIDNat], [StudentName], [StudentBirth], [StudentClassID], [StudentAddrss], [GuardianName], [GuardianPhone], [GuardianEmail]) VALUES (@StudentIDNat, @StudentName, @StudentBirth, @StudentClassID, @StudentAddrss, @GuardianName, @GuardianPhone, @GuardianEmail)" 
                    SelectCommand="SELECT * FROM [TaStudent]" 
                    UpdateCommand="UPDATE [TaStudent] SET [StudentName] = @StudentName, [StudentBirth] = @StudentBirth, [StudentClassID] = @StudentClassID, [StudentAddrss] = @StudentAddrss, [GuardianName] = @GuardianName, [GuardianPhone] = @GuardianPhone, [GuardianEmail] = @GuardianEmail WHERE [StudentIDNat] = @StudentIDNat">
                    <DeleteParameters>
                        <asp:Parameter Name="StudentIDNat" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="StudentIDNat" Type="String" />
                        <asp:Parameter Name="StudentName" Type="String" />
                        <asp:Parameter Name="StudentBirth" Type="String" />
                       
                        <asp:Parameter Name="StudentAddrss" Type="String" />
                        <asp:Parameter Name="GuardianName" Type="String" />
                        <asp:Parameter Name="GuardianPhone" Type="String" />
                        <asp:Parameter Name="GuardianEmail" Type="String" />
                    </InsertParameters>
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
</asp:Content>

