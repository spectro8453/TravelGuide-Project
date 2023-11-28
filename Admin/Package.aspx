<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Package.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="tab" align="center">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Package-Type</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlpackagetype" runat="server" Width="230px" OnSelectedIndexChanged="ddlpackagetype_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlpackagetype" ErrorMessage="Enter Package-Type"></asp:RequiredFieldValidator>
            </td>
            <%--<td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Home</asp:LinkButton>
            </td>--%>
        </tr>
        <tr>
            <td class="auto-style2">Package Name </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtpackage" runat="server" Width="225px" OnTextChanged="txtpackage_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpackage" ErrorMessage="Enter Package Name"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Rate</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtrate" runat="server" Width="225px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrate" ErrorMessage="Rate IT"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">No Of Days</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtnoofdays" runat="server" TextMode="SingleLine" Width="225px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtnoofdays" ErrorMessage="Enter NoOFDays"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Details</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtDetails" runat="server" TextMode="MultiLine" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDetails" ErrorMessage="Enter Details"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Image</td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="230px" />
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style6">
                <asp:Button ID="butsubmit" runat="server" Text="Submit" Width="90px" OnClick="butsubmit_Click" style="height: 26px" />
                <asp:Button ID="butcancel" runat="server" Text="Cancel" Width="90px" />
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowCommand="grdDetails_RowCommand" OnSelectedIndexChanged="grdDetails_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                               <img src="../Assests/PackageImage/<%# Eval("package_image") %>" width="120" height="120" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="packagetype_name" HeaderText="Package-Type" />
                        <asp:BoundField DataField="package_name" HeaderText="Package Name" />
                        <asp:BoundField DataField="package_rate" HeaderText="Rate" />
                        <asp:BoundField DataField="package_noofdays" HeaderText="No Of Days" />
                        <asp:BoundField DataField="package_details" HeaderText="Details" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="delete" runat="server" CommandArgument='<%# Eval("package_id") %>' CommandName="del">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="edit" runat="server" CommandArgument='<%# Eval("package_id") %>' CommandName="ed">Edit</asp:LinkButton>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>

