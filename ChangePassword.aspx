<%@ Page Title="" Language="C#" MasterPageFile="~/Guide/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Guide_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 113px;
        }
        .auto-style3 {
            width: 152px;
        }
        .auto-style4 {
            width: 113px;
            height: 30px;
        }
        .auto-style5 {
            width: 152px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
            width: 1201px;
        }
        .auto-style8 {
            width: 1201px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">Current Password</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtCurrent" runat="server" TextMode="Password" Width="220px" Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCurrent" ErrorMessage="Enter Current Password"></asp:RequiredFieldValidator>
            </td>
            <%--<td class="auto-style6">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Home</asp:LinkButton>
            </td>--%>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">New Password</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtNew" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNew" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">Confirm Password</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirm" ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" Width="100px" Height="60px" />&nbsp
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="100px" Height="60px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

