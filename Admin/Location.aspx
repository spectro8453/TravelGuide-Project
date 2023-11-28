<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="tab" align="center">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">District</td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlDistrict" runat="server"  Width="190px" AutoPostBack="True" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlDistrict" ErrorMessage="Enter District"></asp:RequiredFieldValidator>
            </td>
           <%-- <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Home</asp:LinkButton>
            </td>--%>
        </tr>
        <tr>
            <td class="auto-style2">Place</td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlplace" runat="server"  Width="190px" OnSelectedIndexChanged="ddlplace_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlplace" ErrorMessage="Enter Place"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Location</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtllocation" runat="server"  Width="190px" OnTextChanged="txtllocation_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtllocation" ErrorMessage="Enter Location"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="txtsave" runat="server" OnClick="Button1_Click" Text="Save" Width="90px" />
                <asp:Button ID="txtcancel" runat="server" Text="Cancel" Width="90px" />
            </td>
            </tr>
         </table>
         <br>
         <table>
        <tr>
            
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowCommand="grdDetails_RowCommand" >
                    <Columns>
                        <asp:BoundField DataField="district_name" HeaderText="District" />
                        <asp:BoundField DataField="place_name" HeaderText="Place" />
                        <asp:BoundField DataField="location_name" HeaderText="Location" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="delete" runat="server" CommandArgument='<%# Eval("location_id") %>' CommandName="del">Delete</asp:LinkButton>
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
           
        </tr>
        <tr>
           
        </tr>
        <tr>
            
        </tr>
    </table>
         </div>
</asp:Content>

