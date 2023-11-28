<%@ Page Title="" Language="C#" MasterPageFile="~/Guide/AdminMaster.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Guide_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 190px;
        }
        .auto-style3 {
            width: 190px;
            height: 23px;
            text-align: left;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style6 {
            width: 764px;
        }
        .auto-style7 {
            width: 689px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">    <table class="auto-style1">
        <tr>
            <td class="auto-style5">Name </td>
            <td>
                <asp:TextBox ID="name" runat="server" Width="220px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Enter the Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Contact</td>
            <td>
                <asp:TextBox ID="contact" runat="server" TextMode="SingleLine" Width="220px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="contact" ErrorMessage="Enter Contact No"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="contact" ErrorMessage="Confrim Contact No" ValidationExpression="([0-9]{10,10})"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">E-mail</td>
            <td class="auto-style4">
                <asp:TextBox ID="email" runat="server" Width="220px" Height="30px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Enter Email ID"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="Identify ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Pincode&nbsp;</td>
            <td>
                <asp:TextBox ID="pincode" runat="server" TextMode="SingleLine" Width="220px" Height="30px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pincode" ErrorMessage="Enter the Pincode"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="100px" OnClick="Button1_Click" Height="60px" />
                <asp:Button ID="Button2" runat="server" style="margin-left: 23px" Text="Cancel" Width="100px" Height="60px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <%--<td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Home</asp:LinkButton>
            </td>--%>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

