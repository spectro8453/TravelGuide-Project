<%@ Page Title="" Language="C#" MasterPageFile="~/Guide/AdminMaster.master" AutoEventWireup="true" CodeFile="BookingReport.aspx.cs" Inherits="User_PackageBooking_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="No Record Found!!!" Height="90px" Width="110px">
                            <Columns>
                                <asp:BoundField DataField="package_name" HeaderText="PackageName" />
                                <asp:BoundField DataField="package_rate" HeaderText="Rate" />
                                <asp:BoundField DataField="package_noofdays" HeaderText="NoOfDays" />
                                <asp:BoundField DataField="booking_todate" HeaderText="ToDate" />
                                <asp:BoundField DataField="booking_nos" HeaderText="NoOfPeople" />
                                <asp:BoundField DataField="booking_transactionid" HeaderText="TranscationID" />
                                <asp:BoundField DataField="booking_guide" HeaderText="GuideNeeded" />

                                <asp:BoundField DataField="booking_guidemessage" HeaderText="GuideMessage" />

                                <asp:BoundField DataField="user_name" HeaderText="UserName" />
                                <asp:BoundField DataField="user_contact" HeaderText="Contact" />
                                <asp:BoundField DataField="user_email" HeaderText="Email" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </td>
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

