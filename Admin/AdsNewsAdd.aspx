<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="AdsNewsAdd.aspx.vb" Inherits="Admin_AdsNewsAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style3">
        <tr>
            <td align="center" bgcolor="#F2F2F2">
                <asp:Label ID="Lbmsg" runat="server" Text="إضافة أعلان / خبر"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <table cellpadding="2">
                    <tr>
                        <td>
                            حدد النوع:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                style="font-size: large; font-family: Tahoma">
                                <asp:ListItem Value="0">خبر</asp:ListItem>
                                <asp:ListItem Value="1">إعلان</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="3" CellSpacing="3" DataKeyNames="AdsNewsID" 
                    DataSourceID="SqlDataSource1" DefaultMode="Insert" EnableModelValidation="True" 
                    GridLines="None" Height="50px" Width="600px">
                    <FieldHeaderStyle ForeColor="#009933" HorizontalAlign="Left" 
                        VerticalAlign="Top" Width="60px" />
                    <Fields>
                        <asp:BoundField DataField="AdsNewsID" HeaderText="AdsNewsID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="AdsNewsID" />
                        <asp:TemplateField HeaderText="العنوان" SortExpression="AdsNewsTitle">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("AdsNewsTitle") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" style="font-family: Tahoma" 
                                    Text='<%# Bind("AdsNewsTitle") %>' Width="500px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("AdsNewsTitle") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="التفاصيل" SortExpression="AdsNewsMore">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AdsNewsMore") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Height="300px" 
                                    Text='<%# Bind("AdsNewsMore") %>' TextMode="MultiLine" Width="500px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("AdsNewsMore") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                    CommandName="Insert" style="font-size: large; font-family: Tahoma" 
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
                    DeleteCommand="DELETE FROM [TaAdsNews] WHERE [AdsNewsID] = @AdsNewsID" 
                    InsertCommand="INSERT INTO [TaAdsNews] ([AdsNewsSort], [AdsNewsTitle], [AdsNewsDate], [AdsNewsMore]) VALUES (@AdsNewsSort, @AdsNewsTitle, @AdsNewsDate, @AdsNewsMore)" 
                    SelectCommand="SELECT * FROM [TaAdsNews] ORDER BY [AdsNewsID] DESC" 
                    UpdateCommand="UPDATE [TaAdsNews] SET [AdsNewsSort] = @AdsNewsSort, [AdsNewsTitle] = @AdsNewsTitle, [AdsNewsDate] = @AdsNewsDate, [AdsNewsMore] = @AdsNewsMore WHERE [AdsNewsID] = @AdsNewsID">
                    <DeleteParameters>
                        <asp:Parameter Name="AdsNewsID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                      
                        <asp:Parameter Name="AdsNewsTitle" Type="String" />
                     
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

