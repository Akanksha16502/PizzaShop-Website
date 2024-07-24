<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Contactdata.aspx.cs" Inherits="Contactdata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" 
        AutoGenerateSelectButton="True" 
        BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="3px" 
        CellPadding="4" ForeColor="Black" 
        GridLines="None" style="margin-top: 0px" 
        BorderStyle="Solid" CellSpacing="2" >

        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField Datafield="Cid" 
                HeaderText="Contactid" />
            <asp:BoundField Datafield="Name" 
                HeaderText="Name" />
            <asp:BoundField Datafield="Email" 
                HeaderText="Email " />
            <asp:BoundField Datafield="Contact" 
                HeaderText="Contact no" />
            <asp:BoundField Datafield="Address" 
                HeaderText="Address" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" 
                ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" 
                ForeColor="Black" 
                HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" 
                ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</asp:Content>


