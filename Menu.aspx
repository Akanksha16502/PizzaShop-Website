<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
  <center> Customer Name- <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />Customer Id-<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
<asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Horizontal" HorizontalAlign="Center" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand"
        RepeatDirection="Horizontal" Height="500px"  > 
        
        
        <AlternatingItemStyle BackColor="#F7F7F7" HorizontalAlign="Center" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" 
            Font-Names="Brush Script MT" Font-Size="20pt" HorizontalAlign="Center" />
         <HeaderTemplate>
           Furniture Derails
        </HeaderTemplate>
        
        <ItemTemplate>
        <b>Photo:</b><br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="200" Width="200"
                       ImageAlign="Middle" style="padding-left:40px" /><br />
        
        <b>Furniture Name</b>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pname") %>'></asp:Label><br />
        <b>Price:</b>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br />
        <b>Quantity:</b>
             <asp:Label ID="Label1" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label><br />
            <asp:LinkButton ID="LinkButton1" runat="server" Text="View Details" CommandName="Assign" CommandArgument='<%# Eval("Pid") %>'>
            </asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" Text="Add to Cart" CommandName="Add" CommandArgument='<%# Eval("Pid") %>'>
            </asp:LinkButton>
        </ItemTemplate>
         <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
       
    </asp:DataList>
    <asp:Button ID="Button1" runat="server" Text="View Your Cart" 
            onclick="Button1_Click" />
    </asp:Content>



