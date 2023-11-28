<%@ Page Title="" Language="C#" Debug =" true" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="StayDetails.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="tab" align="center">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Stay-Type</td>
            <td class="auto-style13">
                <asp:DropDownList ID="ddlStaytype" runat="server" OnSelectedIndexChanged="ddlStaytype_SelectedIndexChanged" Width="230px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlStaytype" ErrorMessage="Enter Type"></asp:RequiredFieldValidator>
            </td>
            <%--<td>
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" CausesValidation="False">Home</asp:LinkButton>
            </td>--%>
        </tr>
        <tr>
            <td class="auto-style9">District</td>
            <td class="auto-style14">
                <asp:DropDownList ID="ddlDistrict" runat="server" Height="21px" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" Width="230px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlDistrict" ErrorMessage="Enter District"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Place</td>
            <td class="auto-style13">
                <asp:DropDownList ID="ddlplace" runat="server" Width="230px" AutoPostBack="True" OnSelectedIndexChanged="ddlplace_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlplace" ErrorMessage="Enter Place"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Name</td>
            <td class="auto-style15">
                <asp:TextBox ID="txtName" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Contact</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtContact" runat="server" TextMode="SingleLine" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtContact" ErrorMessage="Enter Contact "></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContact" ErrorMessage="Correct Format" ValidationExpression="([0-9]{10,10})"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">E-mail</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtgmail" runat="server" TextMode="SingleLine" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtgmail" ErrorMessage="Enter Email ID"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtgmail" ErrorMessage="Correct Email ID " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtaddress" runat="server" Height="53px" TextMode="MultiLine" Width="269px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">About</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtabout" runat="server" Height="67px" TextMode="MultiLine" Width="266px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtabout" ErrorMessage="Enter About"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" Width="100px" OnClick="btnsubmit_Click" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="100px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style18">
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowCommand="grdDetails_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="staytype_name" HeaderText="Stay-Type" />
                        <asp:BoundField DataField="district_name" HeaderText="District" />
                        <asp:BoundField DataField="place_name" HeaderText="Place" />
                        <asp:BoundField DataField="stay_name" HeaderText="Name" />
                        <asp:BoundField DataField="stay_contact" HeaderText="Contact" />
                        <asp:BoundField DataField="stay_email" HeaderText="E-mail" />
                        <asp:BoundField DataField="stay_address" HeaderText="Address" />
                        <asp:BoundField DataField="stay_about" HeaderText="About" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("stay_id") %>' CommandName="del">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("stay_id") %>' CommandName="ed">Edit</asp:LinkButton>
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
            <td class="auto-style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>

