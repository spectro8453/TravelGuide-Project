<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="tab" align="center">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <%--<td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Home</asp:LinkButton>
            </td>--%>
        </tr>
        <tr>
            
            <td class="auto-style3">Current Password</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtCurrent" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCurrent" ErrorMessage="Enter Current Password"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">New Password</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtNew" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNew" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="auto-style3">Confirm Passsword</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirm" ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" Width="90px" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px" />
            </td>
            
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblmsg" runat="server" Text="lblmsg"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>

