<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="MarkSeletClass.aspx.vb" Inherits="Admin_MarkSeletClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style3">
    <tr>
        <td align="center" bgcolor="#F2F2F2">
            <asp:Label ID="Lbmsg" runat="server" 
                    Text="حدد الصف لكي تحدد الطلاب"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="IDLevel" 
                DataSourceID="SqlDataSource1" EnableModelValidation="True">
                <EditItemTemplate>
                    IDLevel:
                    <asp:Label ID="IDLevelLabel1" runat="server" Text='<%# Eval("IDLevel") %>' />
                    <br />
                    LevelName:
                    <asp:TextBox ID="LevelNameTextBox" runat="server" 
                        Text='<%# Bind("LevelName") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    LevelName:
                    <asp:TextBox ID="LevelNameTextBox" runat="server" 
                        Text='<%# Bind("LevelName") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" 
                        style="font-weight: 700; font-size: large; color: #FF0000" 
                        Text='<%# Eval("LevelName") %>'></asp:Label>
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [TaLevels] WHERE [IDLevel] = @IDLevel" 
                InsertCommand="INSERT INTO [TaLevels] ([LevelName]) VALUES (@LevelName)" 
                SelectCommand="SELECT * FROM [TaLevels] WHERE ([IDLevel] = @IDLevel)" 
                UpdateCommand="UPDATE [TaLevels] SET [LevelName] = @LevelName WHERE [IDLevel] = @IDLevel">
                <DeleteParameters>
                    <asp:Parameter Name="IDLevel" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="LevelName" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="IDLevel" QueryStringField="IDLevel" 
                        Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LevelName" Type="String" />
                    <asp:Parameter Name="IDLevel" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="right">
            <table cellpadding="2">
                <tr>
                    <td align="left">
                        الصف:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource2" DataTextField="ClassName" 
                            DataValueField="ClassID" style="font-size: medium; font-family: Tahoma" 
                            AutoPostBack="True" Width="300px">
                        </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [ClassID], [ClassName] FROM [TaClass]">
            </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="حدد الفصل"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        الطالب:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            DataSourceID="SqlDataSource3" DataTextField="StudentName" 
                            DataValueField="StudentIDNat" 
                            style="font-size: medium; font-family: Tahoma;" Width="300px" 
                            AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [StudentIDNat], [StudentName], [StudentClassID] FROM [TaStudent] WHERE ([StudentClassID] = @StudentClassID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="StudentClassID" 
                                    PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="DropDownList2" Display="Dynamic" ErrorMessage="حدد الطالب"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                </table>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Button ID="Button1" runat="server" Height="41px" 
                style="font-size: medium; font-family: Tahoma" Text="إذهب لإدخال العلامات" 
                Width="208px" />
        </td>
    </tr>
    <tr>
        <td align="right">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

