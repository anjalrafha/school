<%@ Page Title="التصنيف" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Category.aspx.vb" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style1">
    <tr>
        <td align="right">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                CellPadding="2" DataKeyNames="AdsNewsID" DataSourceID="SqlDataSource1" 
                EmptyDataText="لا يوجد محتويات" EnableModelValidation="True" ForeColor="Black" 
                GridLines="None" ShowHeader="False" Width="100%">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table cellpadding="2" class="style1">
                                <tr>
                                    <td align="right">
                                        <asp:HyperLink ID="HyperLink8" runat="server" Font-Underline="False" 
                                            NavigateUrl='<%# Eval("AdsNewsID", "Details.aspx?AdsNewsID={0}") %>' 
                                            Text='<%# Eval("AdsNewsTitle") %>'></asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                    HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [AdsNewsID], [AdsNewsSort], [AdsNewsTitle] FROM [TaAdsNews] WHERE ([AdsNewsSort] = @AdsNewsSort) ORDER BY [AdsNewsID] DESC">
                <SelectParameters>
                    <asp:QueryStringParameter Name="AdsNewsSort" QueryStringField="AdsNewsSort" 
                        Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

