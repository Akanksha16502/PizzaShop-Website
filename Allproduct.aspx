<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="Allproduct.aspx.cs" Inherits="Allproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   <center>
   Customer Name-
        <asp:Label ID="Label2" runat="server" 
            Text="Label"></asp:Label>
        <br />
        Customer Id-<asp:Label ID="Label3" runat="server" 
            Text="Label"></asp:Label>
        <br />
   </center>
    <asp:DataList ID="DataList1" runat="server" 
        BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" GridLines="Both" 
        HorizontalAlign="Center" 
        onitemcommand="DataList1_ItemCommand" 
        RepeatColumns="4" 
        RepeatDirection="Horizontal" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" >
        <HeaderTemplate>
            MENU DETAILS
        </HeaderTemplate>
        <ItemTemplate>

            <b>Item Name:</b><br />
            <asp:Label ID="Label2" runat="server" 
                Text='<%# Eval("Pname") %>' />
            <br />
            <b>Image:</b><br />
            <asp:Image ID="Image1" runat="server" 
                Height="150" ImageAlign="Middle" 
                ImageUrl='<%# Eval("Image") %>' 
                style="padding-left:40px" Width="150" />
            <br />
            <b>Price:</b><br />
            <asp:Label ID="Label3" runat="server" 
                Text='<%# Eval("Price") %>' />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" 
                CommandArgument='<%# Eval("Pid") %>' 
                CommandName="Assign" Text="View Description"></asp:LinkButton>
                   </ItemTemplate>
        <FooterStyle BackColor="#F7DFB5" 
            ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" 
            ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" 
            ForeColor="#8C4510" />
        <SelectedItemStyle BackColor="#738A9C" 
            Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>


