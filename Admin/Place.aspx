<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Place.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="tab" align="center">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">District</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlDistrict" runat="server" Width="225px" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlDistrict" ErrorMessage="Enter District"></asp:RequiredFieldValidator>
            </td>
            <%--<td>
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" CausesValidation="False">Home</asp:LinkButton>
            </td>--%>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">Place Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtplace" runat="server" Width="220px" OnTextChanged="txtplace_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtplace" ErrorMessage="Enter PlaceName"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3">Pincode</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtpincode" runat="server" Width="220px" OnTextChanged="txtpincode_TextChanged" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpincode" ErrorMessage="Enter Pincode"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            
            <td >
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" Width="90px" />
                <asp:Button ID="Button2" runat="server" Text="Cancel" Width="90px" />
            </td>
            </tr>
         </table>
         <br>
         <table>
        <tr>
            
            <td class="auto-style5">
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowCommand="grdDetails_RowCommand" OnSelectedIndexChanged="grdDetails_SelectedIndexChanged" Width="700px">
                    <Columns>
                        <asp:BoundField DataField="district_name" HeaderText="District Name " />
                        <asp:BoundField DataField="place_name" HeaderText="Place Name" />
                        <asp:BoundField DataField="place_pincode" HeaderText="Pincode" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("place_id") %>' CommandName="del">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("place_id") %>' CommandName="ed">Edit</asp:LinkButton>
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

    </table>
        </div>
</asp:Content>

