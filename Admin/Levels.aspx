<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Levels.aspx.vb" Inherits="Admin_Levels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style3">
    <tr>
        <td align="center" bgcolor="#F2F2F2">
            <asp:Label ID="Lbmsg" runat="server" 
                    Text="إدارة الفصول &amp; المراحل &amp; العلامات"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right">
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                CellPadding="2" CellSpacing="2" DataKeyNames="IDLevel" 
                DataSourceID="SqlDataSource1" DefaultMode="Insert" EnableModelValidation="True" 
                GridLines="None" Height="50px" Width="400px">
                <FieldHeaderStyle HorizontalAlign="Left" Width="160px" />
                <Fields>
                    <asp:BoundField DataField="IDLevel" HeaderText="IDLevel" InsertVisible="False" 
                        ReadOnly="True" SortExpression="IDLevel" />
                    <asp:TemplateField HeaderText="اسم المرحلة او الفصل" SortExpression="LevelName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("LevelName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" style="font-family: Tahoma" 
                                Text='<%# Bind("LevelName") %>' Width="200px"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("LevelName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <InsertItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="اضافة" />
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
                DeleteCommand="DELETE FROM [TaLevels] WHERE [IDLevel] = @IDLevel" 
                InsertCommand="INSERT INTO [TaLevels] ([LevelName]) VALUES (@LevelName)" 
                SelectCommand="SELECT * FROM [TaLevels]" 
                UpdateCommand="UPDATE [TaLevels] SET [LevelName] = @LevelName WHERE [IDLevel] = @IDLevel">
                <DeleteParameters>
                    <asp:Parameter Name="IDLevel" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="LevelName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LevelName" Type="String" />
                    <asp:Parameter Name="IDLevel" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="IDLevel" DataSourceID="SqlDataSource1" 
                EmptyDataText="لا يوجد اي فصول او مراحل" EnableModelValidation="True" 
                ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IDLevel" HeaderText="الرقم" InsertVisible="False" 
                        ReadOnly="True" SortExpression="IDLevel" />
                    <asp:BoundField DataField="LevelName" HeaderText="اسم الفصل او المرحلة" 
                        SortExpression="LevelName" />
                    <asp:CommandField CancelText="الغاء" DeleteText="حذف" EditText="تعديل" 
                        ShowDeleteButton="True" ShowEditButton="True" UpdateText="حفظ" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink5" runat="server" 
                                NavigateUrl='<%# Eval("IDLevel", "MarkSeletClass.aspx?IDLevel={0}") %>' 
                                style="color: #FF0000; font-weight: 700">إدارة العلامات</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

