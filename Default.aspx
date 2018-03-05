<%@ Page Title="الرئيسية" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td bgcolor="#D2D2D2">
                <table cellpadding="2" class="style1">
                    <tr>
                        <td bgcolor="White" valign="top">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" DataKeyNames="AdsNewsID" DataSourceID="SqlDataSource2" 
                                EmptyDataText="لا يوجد محتويات" EnableModelValidation="True" ForeColor="Black" 
                                GridLines="None" Width="258px">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            الإعلانات
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <table cellpadding="0" cellspacing="0" class="style1">
                                                <tr>
                                                    <td align="right">
                                                        <asp:HyperLink ID="HyperLink9" runat="server" Font-Underline="False" 
                                                            NavigateUrl='<%# Eval("AdsNewsID", "Details.aspx?AdsNewsID={0}") %>' 
                                                            Text='<%# Eval("AdsNewsTitle") %>'></asp:HyperLink>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="#858518" Font-Bold="True" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                SelectCommand="SELECT Top(5) [AdsNewsID], [AdsNewsSort], [AdsNewsTitle] FROM [TaAdsNews] WHERE ([AdsNewsSort] = @AdsNewsSort) ORDER BY [AdsNewsID] DESC">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="AdsNewsSort" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td bgcolor="White" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" DataKeyNames="AdsNewsID" DataSourceID="SqlDataSource1" 
                                EmptyDataText="لا يوجد محتويات" EnableModelValidation="True" ForeColor="Black" 
                                GridLines="None" Width="258px">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            الأخبار
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <table cellpadding="0" cellspacing="0" class="style1">
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
                                <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="#858518" Font-Bold="True" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT Top(5) [AdsNewsID], [AdsNewsSort], [AdsNewsTitle] FROM [TaAdsNews] WHERE ([AdsNewsSort] = @AdsNewsSort) ORDER BY [AdsNewsID] DESC">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="0" Name="AdsNewsSort" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td bgcolor="White" valign="middle" style="direction: rtl">
                            <asp:Label ID="Label1" runat="server" style="color: #993300; font-weight: 700" 
                                Text="اكتب هنا كلمة ترحيبية او قم بوضع صور متحركة او يمكنك انشاء سلايد او اي نص متحرك مثلاً ... الخ" 
                                Width="258px"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

