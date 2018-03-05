<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style1">
        <tr>
            <td align="center" bgcolor="#F2F2F2">
                الرجاء إدخال الرقم الوطني للطالب</td>
        </tr>
        <tr>
            <td align="center">
                <table cellpadding="2">
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" 
                                style="font-size: medium; font-family: Tahoma" Text="استعلام" />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TextBox1" runat="server" Width="222px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="StudentIDNat" 
                    EmptyDataText="لا يوجد اي طالب يحمل الرقم الوطني المدخل" 
                    EnableModelValidation="True" ForeColor="Black" GridLines="None" 
                    style="direction: rtl" Width="500px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="StudentName" HeaderText="الأسم" 
                            SortExpression="StudentName" />
                        <asp:BoundField DataField="StudentIDNat" HeaderText="الرقم الوطني" 
                            ReadOnly="True" SortExpression="StudentIDNat" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink8" runat="server" Font-Underline="False" 
                                    ForeColor="Maroon" 
                                    NavigateUrl='<%# Eval("StudentIDNat", "MenuLogin.aspx?StudentIDNat={0}") %>' 
                                    style="font-weight: 700">تأكيد الدخول</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataRowStyle ForeColor="Red" HorizontalAlign="Center" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [StudentName], [StudentIDNat] FROM [TaStudent] WHERE ([StudentIDNat] = @StudentIDNat)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="StudentIDNat" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

