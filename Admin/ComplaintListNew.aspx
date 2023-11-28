<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ComplaintListNew.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="tab" align="center">
    <table class="auto-style1">
        <tr>
            
            <%--<td>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CausesValidation="False">Home</asp:LinkButton>
            </td>--%>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" EmptyDataText="No Record Found!!!" OnRowCommand="grdDetails_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="user_name" HeaderText="Name" />
                        <asp:BoundField DataField="user_email" HeaderText="Email ID" />
                        <asp:BoundField DataField="user_contact" HeaderText="Phone NO" />
                        <asp:BoundField DataField="comptype_name" HeaderText="Complaint Type" />
                        <asp:BoundField DataField="complaint_details" HeaderText="Complaint Details" />
                        <asp:BoundField DataField="complaint_date" HeaderText="Complaint Date" />
                         <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("complaint_id") %>' CommandName="reply" CausesValidation="False">ReplyNow</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">
            <asp:Panel ID="Panel1" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">Replay</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtreplay" runat="server" TextMode="MultiLine" Width="225px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtreplay" ErrorMessage="Enter the field"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td colspan="2">
                            <asp:Button ID="btnSend" runat="server" Text="Update" OnClick="btnSend_Click" Width="110px" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            
        </tr>
    </table>
        </div>
</asp:Content>

