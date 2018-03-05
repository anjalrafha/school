<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="AdsNewsList.aspx.vb" Inherits="Admin_AdsNewsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style3">
        <tr>
            <td align="center" bgcolor="#F2F2F2">
                <asp:Label ID="Lbmsg" runat="server" Text="قائمة الأخبار والإعلانات"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="Button1" runat="server" 
                    style="font-size: medium; font-family: Tahoma" Text="إضافة خبر او إعلان جديد" 
                    Width="377px" />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="AdsNewsID" DataSourceID="SqlDataSource1" 
                    EmptyDataText="لا يوجد أي إعلانات او اخبار" EnableModelValidation="True" 
                    Width="100%">
                    <Columns>
                        <asp:BoundField DataField="AdsNewsID" HeaderText="الرقم" InsertVisible="False" 
                            ReadOnly="True" SortExpression="AdsNewsID" />
                        <asp:TemplateField HeaderText="النوع" SortExpression="AdsNewsSort">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AdsNewsSort") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:ListBox ID="ListBox1" runat="server" Enabled="False" Rows="1" 
                                    SelectedValue='<%# Bind("AdsNewsSort") %>' style="font-size: large">
                                    <asp:ListItem Value="0">خبر</asp:ListItem>
                                    <asp:ListItem Value="1">اعلان</asp:ListItem>
                                </asp:ListBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="AdsNewsTitle" HeaderText="العنوان" 
                            SortExpression="AdsNewsTitle">
                        <ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="AdsNewsDate" HeaderText="التاريخ" 
                            SortExpression="AdsNewsDate" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Font-Strikeout="False" ForeColor="Red" 
                                    onclientclick="return confirm('هل تريد حقاً الحذف؟')" Text="حذف"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="False" 
                                    NavigateUrl='<%# Eval("AdsNewsID", "AdsNewsEdit.aspx?AdsNewsID={0}") %>'>عرض / تعديل</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#006600" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [TaAdsNews] WHERE [AdsNewsID] = @AdsNewsID" 
                    InsertCommand="INSERT INTO [TaAdsNews] ([AdsNewsSort], [AdsNewsTitle], [AdsNewsDate], [AdsNewsMore]) VALUES (@AdsNewsSort, @AdsNewsTitle, @AdsNewsDate, @AdsNewsMore)" 
                    SelectCommand="SELECT * FROM [TaAdsNews] ORDER BY [AdsNewsID] DESC" 
                    UpdateCommand="UPDATE [TaAdsNews] SET [AdsNewsSort] = @AdsNewsSort, [AdsNewsTitle] = @AdsNewsTitle, [AdsNewsDate] = @AdsNewsDate, [AdsNewsMore] = @AdsNewsMore WHERE [AdsNewsID] = @AdsNewsID">
                    <DeleteParameters>
                        <asp:Parameter Name="AdsNewsID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="AdsNewsSort" />
                        <asp:Parameter Name="AdsNewsTitle" Type="String" />
                        <asp:Parameter Name="AdsNewsDate" />
                        <asp:Parameter Name="AdsNewsMore" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="AdsNewsSort" Type="Int32" />
                        <asp:Parameter Name="AdsNewsTitle" Type="String" />
                        <asp:Parameter Name="AdsNewsDate" Type="String" />
                        <asp:Parameter Name="AdsNewsMore" Type="String" />
                        <asp:Parameter Name="AdsNewsID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

