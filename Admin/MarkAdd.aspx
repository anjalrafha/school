<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="MarkAdd.aspx.vb" Inherits="Admin_MarkAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style3">
        <tr>
            <td align="center" bgcolor="#F2F2F2">
                <asp:Label ID="Lbmsg" runat="server" 
                    Text="إضافة علامات"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <table cellpadding="2">
                    <tr>
                        <td align="left">
                            رقم الطالب:</td>
                        <td>
                            <asp:Label ID="LBStudentIDNat" runat="server" ForeColor="#669900"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            اسم الطالب:</td>
                        <td>
                            <asp:Label ID="LbStuName" runat="server" ForeColor="#669900"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" bgcolor="#F8F8F8">
                <table cellpadding="2">
                    <tr>
                        <td align="left">
                            حدد المادة:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="MaterialName" 
                                DataValueField="MaterialID" style="font-family: Tahoma">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [TaMaterial] WHERE ([ClassID] = @ClassID)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="ClassID" SessionField="ClassID" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="2" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource2" 
                    DefaultMode="Insert" EnableModelValidation="True" GridLines="None" 
                    Height="50px" Width="200px">
                    <FieldHeaderStyle BackColor="#669900" ForeColor="White" 
                        HorizontalAlign="Left" />
                    <Fields>
                        <asp:BoundField DataField="ValuMark" HeaderText="العلامة" 
                            SortExpression="ValuMark" />
                        <asp:BoundField DataField="NoteMark" HeaderText="ملاحظة" 
                            SortExpression="NoteMark" />
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                    CommandName="Insert" style="font-family: Tahoma; font-size: medium" 
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [TaMarks] WHERE [ID] = @ID" 
                    InsertCommand="INSERT INTO [TaMarks] ([StudentIDNat], [IDLevel], [ClassID], [MaterialName], [ValuMark], [NoteMark]) VALUES (@StudentIDNat, @IDLevel, @ClassID, @MaterialName, @ValuMark, @NoteMark)" 
                    SelectCommand="SELECT * FROM [TaMarks] WHERE (([ClassID] = @ClassID) AND ([IDLevel] = @IDLevel) AND ([StudentIDNat] = @StudentIDNat))" 
                    UpdateCommand="UPDATE [TaMarks] SET [StudentIDNat] = @StudentIDNat, [IDLevel] = @IDLevel, [ClassID] = @ClassID, [MaterialName] = @MaterialName, [ValuMark] = @ValuMark, [NoteMark] = @NoteMark WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>

                        <asp:Parameter Name="ValuMark" Type="Int32" />
                        <asp:Parameter Name="NoteMark" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="ClassID" SessionField="ClassID" Type="Int32" />
                        <asp:SessionParameter Name="IDLevel" SessionField="IDLevel" Type="Int32" />
                        <asp:SessionParameter Name="StudentIDNat" SessionField="StudentIDNat" 
                            Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="StudentIDNat" Type="String" />
                        <asp:Parameter Name="IDLevel" Type="Int32" />
                        <asp:Parameter Name="ClassID" Type="Int32" />
                        <asp:Parameter Name="MaterialName" Type="String" />
                        <asp:Parameter Name="ValuMark" Type="Int32" />
                        <asp:Parameter Name="NoteMark" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="#F8F8F8">
                قائمة علامات الطالب لهذا الفصل والمرحلة</td>
        </tr>
        <tr>
            <td align="right">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" 
                    EmptyDataText="لا يوجد اي مدخلات" EnableModelValidation="True" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="MaterialName" HeaderText="اسم المادة" 
                            SortExpression="MaterialName" />
                        <asp:BoundField DataField="ValuMark" HeaderText="العلامة" 
                            SortExpression="ValuMark" />
                        <asp:BoundField DataField="NoteMark" HeaderText="ملاحظات" 
                            SortExpression="NoteMark" />
                        <asp:CommandField DeleteText="حذف" ShowDeleteButton="True" />
                    </Columns>
                    <EmptyDataRowStyle ForeColor="Red" HorizontalAlign="Center" />
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#99CC00" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

