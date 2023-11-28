<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ComplaintsReplay.aspx.cs" Inherits="Admin_ComplaintsReplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="tab" align="center">
    <table class="auto-style1">
    <tr>
        <td class="auto-style9">
            <asp:GridView ID="grid" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"  OnRowCommand="grid_RowCommand" PageSize="3"  ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="user_name" HeaderText="UserName" />
                     <asp:BoundField DataField="user_contact" HeaderText="Contact" />
                    <asp:BoundField DataField="user_email" HeaderText="EmailID" />
                        <asp:BoundField DataField="user_address" HeaderText="Address" />
                    <asp:BoundField DataField="complainttype_name" HeaderText="Type" />
                    <asp:BoundField DataField="complaint_caption" HeaderText="CAPTION" />
                    <asp:BoundField DataField="complaint_description" HeaderText="DESCRIPTION" />
                    <asp:BoundField DataField="complaint_date" HeaderText="DATE" />
                    <asp:TemplateField>
                        <ItemTemplate>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <table class="auto-style1">
                                    </tr>

                                </table>
                            <br>
                            <table>
                                <tr>
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:LinkButton ID="lb_delete" runat="server" CommandArgument='<%# Eval("complaint_id") %>' CommandName="re" CausesValidation="False">Replay</asp:LinkButton>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" BackColor="PaleGoldenrod" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </td>
        <%--<td class="auto-style5">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Home</asp:LinkButton>
        </td>--%>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Panel ID="Panel1" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">Replay</td>
                        <%--<td class="auto-style8">&nbsp;</td>--%>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtreplay" runat="server" TextMode="MultiLine" Width="225px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtreplay" ErrorMessage="Enter the field"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td colspan="2">
                            <asp:Button ID="btnSend" runat="server" Text="Update" OnClick="btnSend_Click" Width="90px" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <%--<td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>--%>
    </tr>
    <tr>
        <%--<td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>--%>
    </tr>
</table>
        </div>
</asp:Content>

