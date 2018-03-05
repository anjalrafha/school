<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Teachers.aspx.vb" Inherits="Teachers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style1">
        <tr>
            <td align="center">
                المعلمين</td>
        </tr>
        <tr>
            <td align="right" style="direction: rtl">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="IDTeacher" DataSourceID="SqlDataSource1" 
                    EmptyDataText="لا يوجد بيانات" EnableModelValidation="True" ForeColor="Black" 
                    GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="NameTeacher" HeaderText="اسم المعلم" 
                            SortExpression="NameTeacher" />
                        <asp:BoundField DataField="QualificationTeachers" HeaderText="المؤهل العلمي" 
                            SortExpression="QualificationTeachers" />
                        <asp:BoundField DataField="SpecializationTeachers" HeaderText="التخصص العلمي" 
                            SortExpression="SpecializationTeachers" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [TaTeacher] ORDER BY [IDTeacher] DESC">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

