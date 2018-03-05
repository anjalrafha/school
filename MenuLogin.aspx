<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MenuLogin.aspx.vb" Inherits="MenuLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            direction: rtl;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style1">
        <tr>
            <td align="center" bgcolor="#EAEAEA" style="direction: rtl">
                صفحة الطالب:</td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    Width="100%">
                    <ItemTemplate>
                        <table cellpadding="2" class="style1">
                            <tr>
                                <td align="right">
                                    <table cellpadding="2">
                                        <tr>
                                            <td align="left" bgcolor="#FFFFCC">
                                                الرقم الوطني</td>
                                            <td align="right">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("StudentIDNat") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" bgcolor="#FFFFCC">
                                                اسم الطالب</td>
                                            <td align="right">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" bgcolor="#FFFFCC">
                                                تاريخ الميلاد</td>
                                            <td align="right">
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("StudentBirth") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" bgcolor="#FFFFCC">
                                                الصف الحالي:</td>
                                            <td align="right">
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("ClassName") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td align="right">
                                    <table cellpadding="2">
                                        <tr>
                                            <td align="left" bgcolor="#FFFFCC">
                                                اسم ولي الأمر</td>
                                            <td align="right">
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("GuardianName") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" bgcolor="#FFFFCC">
                                                رقم الهاتف</td>
                                            <td align="right">
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("GuardianPhone") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" bgcolor="#FFFFCC">
                                                البريد الإلكتروني</td>
                                            <td align="right">
                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("GuardianEmail") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" bgcolor="#FFFFCC">
                                                &nbsp;</td>
                                            <td align="right">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT TaStudent.StudentIDNat, TaStudent.StudentName, TaStudent.StudentBirth, TaStudent.StudentClassID, TaStudent.StudentAddrss, TaStudent.GuardianName, TaStudent.GuardianPhone, TaStudent.GuardianEmail, TaClass.ClassName, TaClass.ClassID FROM TaStudent LEFT OUTER JOIN TaClass ON TaStudent.StudentClassID = TaClass.ClassID WHERE (TaStudent.StudentIDNat = @StudentIDNat)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="StudentIDNat" QueryStringField="StudentIDNat" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="#EAEAEA" class="style4">
                ملاحظات المدرسة على الطالب (إنذارات، عقوبات، دعوات ..الخ)</td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="ID" DataSourceID="SqlDataSource2" 
                    EmptyDataText="لا يوجد اي رسائل من الإدارة" EnableModelValidation="True" 
                    ForeColor="Black" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="DateNote" HeaderText="التاريخ" 
                            SortExpression="DateNote" />
                        <asp:BoundField DataField="TitleNote" HeaderText="العنوان" 
                            SortExpression="TitleNote" />
                        <asp:BoundField DataField="MoreTote" SortExpression="MoreTote" />
                    </Columns>
                    <EmptyDataRowStyle ForeColor="Maroon" HorizontalAlign="Center" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [TaNote] WHERE ([StudentIDNat] = @StudentIDNat) ORDER BY [ID] DESC">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="StudentIDNat" QueryStringField="StudentIDNat" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="#EAEAEA" class="style4">
                علامات الطالب</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <table cellpadding="2">
                    <tr>
                        <td>
                            الرجاء حدد الفصل او المرحلة:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource3" DataTextField="LevelName" 
                                DataValueField="IDLevel" style="font-size: medium" Width="300px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [TaLevels]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" 
                                style="font-size: medium; font-family: Tahoma" Text="فرز الأن" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="ID" 
                    EmptyDataText="لا يوجد اي علامات مدخلة حتى الأن" EnableModelValidation="True" 
                    ForeColor="Black" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="IDLevel" HeaderText="الفصل /المرحلة" 
                            SortExpression="IDLevel" />
                        <asp:BoundField DataField="MaterialName" HeaderText="اسم الطالب" 
                            SortExpression="MaterialName" />
                        <asp:BoundField DataField="ValuMark" HeaderText="العلامة" 
                            SortExpression="ValuMark" />
                        <asp:BoundField DataField="NoteMark" HeaderText="ملاحظات" 
                            SortExpression="NoteMark" />
                    </Columns>
                    <EmptyDataRowStyle ForeColor="Red" HorizontalAlign="Center" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [TaMarks] WHERE (([StudentIDNat] = @StudentIDNat) AND ([IDLevel] = @IDLevel))">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="StudentIDNat" QueryStringField="StudentIDNat" 
                            Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="IDLevel" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

