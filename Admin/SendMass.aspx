<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="SendMass.aspx.vb" Inherits="Admin_SendMass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style3">
        <tr>
            <td align="center" bgcolor="#F2F2F2">
                <asp:Label ID="Lbmsg" runat="server" 
                    Text="إدارة الرسال والملاحظات الموجهه لولي امر الطالب:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="StudentIDNat" 
                    DataSourceID="SqlDataSource1" EnableModelValidation="True">
                    <EditItemTemplate>
                        StudentIDNat:
                        <asp:Label ID="StudentIDNatLabel1" runat="server" 
                            Text='<%# Eval("StudentIDNat") %>' />
                        <br />
                        StudentName:
                        <asp:TextBox ID="StudentNameTextBox" runat="server" 
                            Text='<%# Bind("StudentName") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        StudentIDNat:
                        <asp:TextBox ID="StudentIDNatTextBox" runat="server" 
                            Text='<%# Bind("StudentIDNat") %>' />
                        <br />
                        StudentName:
                        <asp:TextBox ID="StudentNameTextBox" runat="server" 
                            Text='<%# Bind("StudentName") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" style="color: #CC0000; font-weight: 700" 
                            Text='<%# Eval("StudentName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [StudentIDNat], [StudentName] FROM [TaStudent] WHERE ([StudentIDNat] = @StudentIDNat)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="StudentIDNat" QueryStringField="StudentIDNat" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right">
                <table cellpadding="2" class="style3">
                    <tr>
                        <td align="right">
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                CellPadding="2" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource2" 
                                DefaultMode="Insert" EnableModelValidation="True" GridLines="None" 
                                Height="50px" Width="600px">
                                <FieldHeaderStyle HorizontalAlign="Left" Width="80px" />
                                <Fields>
                                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="ID" />
                                    <asp:TemplateField HeaderText="العنوان" SortExpression="TitleNote">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TitleNote") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" style="font-size: medium" 
                                                Text='<%# Bind("TitleNote") %>' Width="500px"></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("TitleNote") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="التفصيل" SortExpression="MoreTote">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MoreTote") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Height="106px" 
                                                Text='<%# Bind("MoreTote") %>' TextMode="MultiLine" Width="500px"></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("MoreTote") %>'></asp:Label>
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
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [TaNote] WHERE [ID] = @ID" 
                                InsertCommand="INSERT INTO [TaNote] ([StudentIDNat], [DateNote], [TitleNote], [MoreTote]) VALUES (@StudentIDNat, @DateNote, @TitleNote, @MoreTote)" 
                                SelectCommand="SELECT * FROM [TaNote] WHERE ([StudentIDNat] = @StudentIDNat) ORDER BY [ID] DESC" 
                                UpdateCommand="UPDATE [TaNote] SET [StudentIDNat] = @StudentIDNat, [DateNote] = @DateNote, [TitleNote] = @TitleNote, [MoreTote] = @MoreTote WHERE [ID] = @ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                 
                                  
                                    <asp:Parameter Name="TitleNote" Type="String" />
                                    <asp:Parameter Name="MoreTote" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="StudentIDNat" QueryStringField="StudentIDNat" 
                                        Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="StudentIDNat" Type="String" />
                                    <asp:Parameter Name="DateNote" Type="String" />
                                    <asp:Parameter Name="TitleNote" Type="String" />
                                    <asp:Parameter Name="MoreTote" Type="String" />
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#F2F2F2">
                            قائمة الرسائل والملاحظات عن الطالب</td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" 
                                EmptyDataText="لا يوجد اي ملاحظات لهذا الطالب" EnableModelValidation="True" 
                                ForeColor="#333333" GridLines="None" Width="100%">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="DateNote" HeaderText="التاريخ" 
                                        SortExpression="DateNote" />
                                    <asp:BoundField DataField="TitleNote" HeaderText="العنوان" 
                                        SortExpression="TitleNote" />
                                    <asp:BoundField DataField="MoreTote" HeaderText="التفاصيل" 
                                        SortExpression="MoreTote" />
                                    <asp:CommandField ButtonType="Button" DeleteText="حذف" 
                                        ShowDeleteButton="True" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

