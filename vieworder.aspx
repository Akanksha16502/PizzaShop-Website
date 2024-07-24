<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="vieworder.aspx.cs" Inherits="vieworder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center><h1 style="background-color: #C0C0C0; color: #800080">CUSTOMER ORDER</h1>
    <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        AutoGenerateColumns="False" CellSpacing="2">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
         <Columns>
            <asp:BoundField DataField="Rid" HeaderText=" Customer Id" />
            <asp:BoundField DataField="Name" HeaderText="Customer Name" />
             <asp:BoundField DataField="Address" HeaderText="Address" />
            <asp:BoundField DataField="Contact" HeaderText=" Mobile" />
            <asp:BoundField DataField="Email" HeaderText=" Email_Id" />
            <asp:BoundField DataField="Date" HeaderText=" Purchase Date" />
            <asp:BoundField DataField="Pid" HeaderText=" Product ID" />
            <asp:BoundField DataField="Quantity" HeaderText=" Quantity" />
            <asp:BoundField DataField="Price" HeaderText=" Price" />
                    

            </Columns>
    </asp:GridView>
    </center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

