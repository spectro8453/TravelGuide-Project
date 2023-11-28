<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="GuideRegistration.aspx.cs" Inherits="Guest_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="tab" align="center">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">Name </td>
            <td class="auto-style6">
                <asp:TextBox ID="name" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Enter Correct Name"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Gender</td>
            <td class="auto-style7">
                <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="gender" ErrorMessage="Enter Gender"></asp:RequiredFieldValidator>
&nbsp;
            </td>
            <%--<td class="auto-style4">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Home</asp:LinkButton>
            </td>--%>
        </tr>
        <tr>
            <td class="auto-style5">District</td>
            <td class="auto-style6">
                

                <asp:DropDownList ID="district" runat="server" Width="225px" AutoPostBack="True" OnSelectedIndexChanged="district_SelectedIndexChanged">
                </asp:DropDownList>
                

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="district" ErrorMessage="Enter District"></asp:RequiredFieldValidator>
                

            </td>
            <td>
                

                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Place&nbsp;</td>
            <td class="auto-style6">
                <asp:DropDownList ID="place" runat="server" Width="225px" OnSelectedIndexChanged="place_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="place" ErrorMessage="Enter Place"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Contact</td>
            <td class="auto-style6">
                <asp:TextBox ID="contact" runat="server" TextMode="SingleLine" Width="220px" OnTextChanged="contact_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="contact" ErrorMessage="Enter Contact"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="contact" ErrorMessage="Enter Correct No" ValidationExpression="([0-9]{10,10})"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">E-mail</td>
            <td class="auto-style7">
                <asp:TextBox ID="email" runat="server" Width="220px" OnTextChanged="email_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email" ErrorMessage="Enter Email ID"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="Current Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Password&nbsp;</td>
            <td class="auto-style6">
                <asp:TextBox ID="psswd" runat="server" TextMode="Password" Width="220px" OnTextChanged="psswd_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="psswd" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Confirm Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="cnpsswd" runat="server" TextMode="Password" Width="220px" OnTextChanged="cnpsswd_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="cnpsswd" ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Pincode&nbsp;</td>
            <td class="auto-style6">
                <asp:TextBox ID="pincode" runat="server" TextMode="SingleLine" Width="220px" OnTextChanged="pincode_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="pincode" ErrorMessage="Enter Pincode"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="90px" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" style="margin-left: 23px" Text="Cancel" Width="90px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
        </div>
</asp:Content>

