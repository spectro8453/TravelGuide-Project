<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="BookingReport.aspx.cs" Inherits="User_PackageBooking_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="tab" align="center">
    <table class="auto-style9">
        <tr>
            
            <td>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style10">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="NewBooking(NoGuide)" />
                        </td>
                        <td class="auto-style11">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="NewBooking(GuideNeeded)" />
                        </td>
                        <td>
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="NewBooking(AssignedGuide)" />
                        </td>
                        
                    </tr>
                </table>
            </td>
         
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="No Record Found!!!">
                            <Columns>
                                <asp:BoundField DataField="package_name" HeaderText="PackageName" />
                                <asp:BoundField DataField="package_rate" HeaderText="Rate" />
                                <asp:BoundField DataField="package_noofdays" HeaderText="NoOfDays" />
                                <asp:BoundField DataField="booking_todate" HeaderText="ToDate" />
                                <asp:BoundField DataField="booking_nos" HeaderText="NoOfPeople" />
                                <asp:BoundField DataField="booking_total" HeaderText="TotalAmount" />
                                <asp:BoundField DataField="booking_advance" HeaderText="Advance" />
                                <asp:BoundField DataField="booking_transactionid" HeaderText="TranscationID" />
                                <asp:BoundField DataField="booking_guide" HeaderText="GuideNeeded" />
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
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="No Record Found!!!" OnRowCommand="GridView2_RowCommand">
                            <Columns>
                                <asp:BoundField DataField="package_name" HeaderText="PackageName" />
                                <asp:BoundField DataField="package_rate" HeaderText="Rate" />
                                <asp:BoundField DataField="package_noofdays" HeaderText="NoOfDays" />
                                <asp:BoundField DataField="booking_todate" HeaderText="ToDate" />
                                <asp:BoundField DataField="booking_nos" HeaderText="NoOfPeople" />
                                <asp:BoundField DataField="booking_total" HeaderText="TotalAmount" />
                                <asp:BoundField DataField="booking_advance" HeaderText="Advance" />
                                <asp:BoundField DataField="booking_transactionid" HeaderText="TranscationID" />
                                <asp:BoundField DataField="booking_guide" HeaderText="GuideNeeded" />
                                <asp:BoundField DataField="user_name" HeaderText="UserName" />
                                <asp:BoundField DataField="user_contact" HeaderText="Contact" />
                                <asp:BoundField DataField="user_email" HeaderText="Email" />

                                  <asp:TemplateField><ItemTemplate><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("booking_id") %>' CommandName="assign">AssignGuide</asp:LinkButton></ItemTemplate></asp:TemplateField>
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
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="No Record Found!!!">
                            <Columns>
                                <asp:BoundField DataField="package_name" HeaderText="PackageName" />
                                <asp:BoundField DataField="package_rate" HeaderText="Rate" />
                                <asp:BoundField DataField="package_noofdays" HeaderText="NoOfDays" />
                                <asp:BoundField DataField="booking_todate" HeaderText="ToDate" />
                                <asp:BoundField DataField="booking_nos" HeaderText="NoOfPeople" />
                                <asp:BoundField DataField="booking_total" HeaderText="TotalAmount" />
                                <asp:BoundField DataField="booking_advance" HeaderText="Advance" />
                                <asp:BoundField DataField="booking_transactionid" HeaderText="TranscationID" />
                                <asp:BoundField DataField="booking_guide" HeaderText="GuideNeeded" />

                                <asp:BoundField DataField="guide_name" HeaderText="GuideName" />
                                <asp:BoundField DataField="guide_contact" HeaderText="Contact" />
                                <asp:BoundField DataField="guide_email" HeaderText="Email" />
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
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <table class="auto-style9">
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">Guide Name</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="220px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">Message</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Submit" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
            
        </tr>
        </table>
        </div>
</asp:Content>

