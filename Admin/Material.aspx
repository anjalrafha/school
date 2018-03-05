<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Material.aspx.vb" Inherits="Admin_Material" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style3">
        <tr>
            <td align="center" bgcolor="#F2F2F2">
                <asp:Label ID="Lbmsg" runat="server" Text="إدارة المواد للصف:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ClassID" 
                    DataSourceID="SqlDataSource1" EnableModelValidation="True">
                    <EditItemTemplate>
                        ClassID:
                        <asp:Label ID="ClassIDLabel1" runat="server" Text='<%# Eval("ClassID") %>' />
                        <br />
                        ClassName:
                        <asp:TextBox ID="ClassNameTextBox" runat="server" 
                            Text='<%# Bind("ClassName") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        ClassName:
                        <asp:TextBox ID="ClassNameTextBox" runat="server" 
                            Text='<%# Bind("ClassName") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" 
                            style="font-weight: 700; font-size: large; color: #990000;" 
                            Text='<%# Eval("ClassName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [ClassID], [ClassName] FROM [TaClass]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="2" CellSpacing="3" DataKeyNames="MaterialID" 
                    DataSourceID="SqlDataSource2" DefaultMode="Insert" EnableModelValidation="True" 
                    GridLines="None" Height="50px" Width="400px">
                    <FieldHeaderStyle HorizontalAlign="Left" Width="100px" />
                    <Fields>
                        <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="MaterialID" />
                        <asp:TemplateField HeaderText="اسم المادة" SortExpression="MaterialName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MaterialName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" style="font-size: medium" 
                                    Text='<%# Bind("MaterialName") %>' Width="200px"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaterialName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                    CommandName="Insert" style="font-size: medium; font-family: Tahoma" 
                                    Text="إضافة" />
                                &nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                    CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                    <HeaderStyle HorizontalAlign="Left" Width="100px" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [TaMaterial] WHERE [MaterialID] = @MaterialID" 
                    InsertCommand="INSERT INTO [TaMaterial] ([ClassID], [MaterialName]) VALUES (@ClassID, @MaterialName)" 
                    SelectCommand="SELECT * FROM [TaMaterial] WHERE ([ClassID] = @ClassID) ORDER BY [MaterialID] DESC" 
                    UpdateCommand="UPDATE [TaMaterial] SET [ClassID] = @ClassID, [MaterialName] = @MaterialName WHERE [MaterialID] = @MaterialID">
                    <DeleteParameters>
                        <asp:Parameter Name="MaterialID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                     
                        <asp:Parameter Name="MaterialName" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ClassID" QueryStringField="ClassID" 
                            Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ClassID" Type="Int32" />
                        <asp:Parameter Name="MaterialName" Type="String" />
                        <asp:Parameter Name="MaterialID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="MaterialID" DataSourceID="SqlDataSource2" 
                    EmptyDataText=" يوجد اي مواد تتبع لهذا الصف" EnableModelValidation="True" 
                    Width="500px">
                    <Columns>
                        <asp:BoundField DataField="MaterialID" HeaderText="رقم المادة" 
                            InsertVisible="False" ReadOnly="True" SortExpression="MaterialID" />
                        <asp:BoundField DataField="MaterialName" HeaderText="اسم المادة" 
                            SortExpression="MaterialName" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="حذف"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

