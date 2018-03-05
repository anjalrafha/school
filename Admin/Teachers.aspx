<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Teachers.aspx.vb" Inherits="Admin_Teachers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style3">
    <tr>
        <td align="center" bgcolor="#F2F2F2">
                <asp:Label ID="Lbmsg" runat="server" Text="قائمة المعلمين"></asp:Label>
            </td>
    </tr>
    <tr>
        <td align="right">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                CellPadding="2" CellSpacing="2" DataKeyNames="IDTeacher" 
                DataSourceID="SqlDataSource1" DefaultMode="Insert" EnableModelValidation="True" 
                GridLines="None" Height="50px" Width="500px">
                <FieldHeaderStyle ForeColor="#006600" HorizontalAlign="Left" Width="150px" />
                <Fields>
                    <asp:BoundField DataField="IDTeacher" HeaderText="IDTeacher" 
                        InsertVisible="False" ReadOnly="True" SortExpression="IDTeacher" />
                    <asp:TemplateField HeaderText="الرقم الوطني للمعلم" 
                        SortExpression="NatIDTeacher">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NatIDTeacher") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" style="font-size: medium" 
                                Text='<%# Bind("NatIDTeacher") %>' Width="250px"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("NatIDTeacher") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="اسم المعلم" SortExpression="NameTeacher">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("NameTeacher") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" style="font-size: medium" 
                                Text='<%# Bind("NameTeacher") %>' Width="250px"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("NameTeacher") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="تاريخ الميلاد" SortExpression="BirthTeachers">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("BirthTeachers") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" style="font-size: medium" 
                                Text='<%# Bind("BirthTeachers") %>' Width="250px"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("BirthTeachers") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="المؤهل العلمي" 
                        SortExpression="QualificationTeachers">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" 
                                Text='<%# Bind("QualificationTeachers") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" style="font-size: medium" 
                                Text='<%# Bind("QualificationTeachers") %>' Width="250px"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" 
                                Text='<%# Bind("QualificationTeachers") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="التخصص العلمي" 
                        SortExpression="SpecializationTeachers">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" 
                                Text='<%# Bind("SpecializationTeachers") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" style="font-size: medium" 
                                Text='<%# Bind("SpecializationTeachers") %>' Width="250px"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" 
                                Text='<%# Bind("SpecializationTeachers") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <InsertItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                CommandName="Insert" style="font-size: medium; font-family: Tahoma" 
                                Text="إضافة" />
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
                DeleteCommand="DELETE FROM [TaTeacher] WHERE [IDTeacher] = @IDTeacher" 
                InsertCommand="INSERT INTO [TaTeacher] ([NatIDTeacher], [NameTeacher], [BirthTeachers], [QualificationTeachers], [SpecializationTeachers]) VALUES (@NatIDTeacher, @NameTeacher, @BirthTeachers, @QualificationTeachers, @SpecializationTeachers)" 
                SelectCommand="SELECT * FROM [TaTeacher] ORDER BY [IDTeacher] DESC" 
                UpdateCommand="UPDATE [TaTeacher] SET [NatIDTeacher] = @NatIDTeacher, [NameTeacher] = @NameTeacher, [BirthTeachers] = @BirthTeachers, [QualificationTeachers] = @QualificationTeachers, [SpecializationTeachers] = @SpecializationTeachers WHERE [IDTeacher] = @IDTeacher">
                <DeleteParameters>
                    <asp:Parameter Name="IDTeacher" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NatIDTeacher" Type="String" />
                    <asp:Parameter Name="NameTeacher" Type="String" />
                    <asp:Parameter Name="BirthTeachers" Type="String" />
                    <asp:Parameter Name="QualificationTeachers" Type="String" />
                    <asp:Parameter Name="SpecializationTeachers" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NatIDTeacher" Type="String" />
                    <asp:Parameter Name="NameTeacher" Type="String" />
                    <asp:Parameter Name="BirthTeachers" Type="String" />
                    <asp:Parameter Name="QualificationTeachers" Type="String" />
                    <asp:Parameter Name="SpecializationTeachers" Type="String" />
                    <asp:Parameter Name="IDTeacher" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="IDTeacher" DataSourceID="SqlDataSource1" 
                EmptyDataText="لا يوجد اي معلمين في القائمة" EnableModelValidation="True" 
                Width="100%">
                <Columns>
                    <asp:BoundField DataField="NatIDTeacher" HeaderText="الرقم الوطني" 
                        SortExpression="NatIDTeacher" />
                    <asp:BoundField DataField="NameTeacher" HeaderText="اسم المعلم" 
                        SortExpression="NameTeacher" />
                    <asp:BoundField DataField="BirthTeachers" HeaderText="تاريخ الميلاد" 
                        SortExpression="BirthTeachers" />
                    <asp:BoundField DataField="QualificationTeachers" HeaderText="المؤهل العلمي" 
                        SortExpression="QualificationTeachers" />
                    <asp:BoundField DataField="SpecializationTeachers" HeaderText="التخصص العلمي" 
                        SortExpression="SpecializationTeachers" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="حفظ"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="الغاء"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="تعديل"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="حذف"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#006600" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

