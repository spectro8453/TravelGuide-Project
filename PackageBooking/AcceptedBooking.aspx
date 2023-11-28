﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/PackageBooking/Purchasemaster.master" AutoEventWireup="true" CodeFile="AcceptedBooking.aspx.cs" Inherits="User_PurchasePhoto_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" OnItemCommand="DataList1_ItemCommand"   RepeatColumns="4" RepeatDirection="Horizontal">
                    <AlternatingItemStyle BackColor="PaleGoldenrod" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style4" colspan="2">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="view" CommandArgument='<%#Eval("service_image") %>' ToolTip="Click herer to view image">  <img src="../../Assests/ServiceImage/<%#Eval("service_image") %>" width="125" height="125" /></asp:LinkButton>  
                                    
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7" colspan="2">
                                    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:Rating ID="Rating1" runat="server" CurrentRating="0" EmptyStarCssClass="emptyRatingStar" FilledStarCssClass="filledRatingStar" OnChanged="Rating1_Changed" StarCssClass="ratingStar" Style="float:left;" Tag='<%#Eval("book_id")%>' WaitingStarCssClass="savedRatingStar">
                                            </asp:Rating>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>--%>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("center_id") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">ServiceName</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" style="font-size: medium" Text='<%# Eval("service_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">ServiceType</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("servicetype_name") %>'></asp:Label>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style12">Rate</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("service_rate") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">Model</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("model_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">CenterName</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("center_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">Contact</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("center_contact") %>'></asp:Label>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style12">Email</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("center_email") %>'></asp:Label>
                                </td>
                            </tr>

                              <tr>
                                <td class="auto-style12">BookingDate</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("booking_todate") %>'></asp:Label>
                                </td>
                            </tr>

                              <tr>
                                <td class="auto-style12">Slot</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("slot_name") %>'></asp:Label>
                                </td>
                            </tr>

                            


                            <tr>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style6">
                                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("booking_id") %>' CommandName="del" Text="PayNow" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

