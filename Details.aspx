<%@ Page Title="التفاصيل" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style1">
    <tr>
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                CellPadding="2" CellSpacing="2" DataKeyNames="AdsNewsID" 
                DataSourceID="SqlDataSource1" EmptyDataText="لا يوجد بيانات" 
                EnableModelValidation="True" ForeColor="Black" GridLines="None" 
                ShowHeader="False" Width="100%">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table cellpadding="2" class="style1">
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="Label1" runat="server" 
                                            style="font-size: large; font-weight: 700" Text='<%# Eval("AdsNewsTitle") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="Label2" runat="server" style="color: #009933" 
                                            Text='<%# Eval("AdsNewsDate") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("AdsNewsMore") %>'></asp:Label>
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
                SelectCommand="SELECT * FROM [TaAdsNews] WHERE ([AdsNewsID] = @AdsNewsID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="AdsNewsID" QueryStringField="AdsNewsID" 
                        Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

