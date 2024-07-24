<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="CustomerMenu.aspx.cs" Inherits="CustomerMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <center>
        Customer Name-<asp:Label ID="Label2" runat="server" 
            Text="Label"></asp:Label><br />
        Customer Id-<asp:Label ID="Label3" runat="server" 
            Text="Label"></asp:Label><br />
    </center>
    <asp:DataList ID="DataList1" runat="server" 
        BackColor="White" BorderColor="#E7E7FF" 
        BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" GridLines="Horizontal" 
        Height="500px" HorizontalAlign="Center" 
        OnItemCommand="DataList1_ItemCommand" 
        RepeatColumns="4" 
        RepeatDirection="Horizontal" 
        onselectedindexchanged="DataList1_SelectedIndexChanged">
        <AlternatingItemStyle BackColor="#F7F7F7" 
            HorizontalAlign="Center" />
        <FooterStyle BackColor="#B5C7DE" 
            ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" 
            Font-Names="Brush Script MT" Font-Size="20pt" 
            ForeColor="#F7F7F7" HorizontalAlign="Center" />
        <HeaderTemplate>
            Menu Details
        </HeaderTemplate>
        <ItemTemplate>
            <b>Photo:</b><br />
            <asp:Image ID="Image1" runat="server" 
                Height="200" ImageAlign="Middle" 
                ImageUrl='<%# Eval("Image") %>' 
                style="padding-left:40px" Width="200" />
            <br />
            <b>Item_Name</b>
            <asp:Label ID="Label4" runat="server" 
                Text='<%# Eval("Pname") %>'></asp:Label>
            <br />
            <b>Price:</b>
            <asp:Label ID="Label5" runat="server" 
                Text='<%# Eval("Price") %>'></asp:Label>
            <br />
            <b>Quantity:</b>
            <asp:Label ID="Label1" runat="server" 
                Text='<%# Eval("Quantity") %>'></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" 
                CommandArgument='<%# Eval("Pid") %>' 
                CommandName="Assign" Text="View Details">
            </asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" 
                CommandArgument='<%# Eval("Pid") %>' 
                CommandName="Add" Text="Add to Cart">
            </asp:LinkButton>
        </ItemTemplate>
        <ItemStyle BackColor="#E7E7FF" 
            ForeColor="#4A3C8C" HorizontalAlign="Center" />
        <SelectedItemStyle BackColor="#738A9C" 
            Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
   <center> <asp:Button ID="Button1" runat="server" 
        onclick="Button1_Click" Text="View Your Cart" /></center>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

