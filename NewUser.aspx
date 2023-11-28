<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.master" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="Guest_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 198px;
        }
        .auto-style3 {
            width: 198px;
            height: 23px;
            text-align: left;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 198px;
        }
        .auto-style6 {
            width: 268px;
        }
        .auto-style7 {
            height: 23px;
            width: 268px;
        }
        .auto-style8 {
            width: 198px;
            height: 26px;
        }
        .auto-style9 {
            width: 268px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">Name </td>
            <td class="auto-style6">
                <asp:TextBox ID="name" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Gender</td>
            <td class="auto-style7">
                <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="gender" ErrorMessage="Enter Gender"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">District</td>
            <td class="auto-style6">
                

                <asp:DropDownList ID="district" runat="server" Width="225px" AutoPostBack="True" OnSelectedIndexChanged="district_SelectedIndexChanged">
                </asp:DropDownList>
                

            </td>
            <td>
                

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="district" ErrorMessage="Enter District"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Place&nbsp;</td>
            <td class="auto-style9">
                <asp:DropDownList ID="place" runat="server" Width="225px" OnSelectedIndexChanged="place_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="place" ErrorMessage="Enter Place"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Contact</td>
            <td class="auto-style6">
                <asp:TextBox ID="contact" runat="server" TextMode="SingleLine" Width="220px" OnTextChanged="contact_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="contact" ErrorMessage="Enter Contact"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="contact" ErrorMessage="Enter Correct Format" ValidateRequestMode="Enabled" ValidationExpression="([0-9]{10,10})"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">E-mail</td>
            <td class="auto-style7">
                <asp:TextBox ID="email" runat="server" Width="220px" OnTextChanged="email_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email" ErrorMessage="Enter Email ID"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="Enter Correct Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Password&nbsp;</td>
            <td class="auto-style6">
                <asp:TextBox ID="psswd" runat="server" TextMode="Password" Width="220px" OnTextChanged="psswd_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="psswd" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Confirm Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="cnpsswd" runat="server" TextMode="Password" Width="220px" OnTextChanged="cnpsswd_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="cnpsswd" ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Pincode&nbsp;</td>
            <td class="auto-style6">
                <asp:TextBox ID="pincode" runat="server" TextMode="SingleLine" Width="220px" OnTextChanged="pincode_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="pincode" ErrorMessage="Enter Pincode"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="90px" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" style="margin-left: 23px" Text="Cancel" Width="90px" CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

