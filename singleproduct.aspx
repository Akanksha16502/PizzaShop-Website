<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="singleproduct.aspx.cs" Inherits="singleproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" 
        BorderColor="#333300" BorderWidth="4px" 
        CellPadding="4" ForeColor="#333333" 
        HorizontalAlign="Center" RepeatColumns="3" 
        RepeatDirection="Horizontal" 
        onselectedindexchanged="DataList1_SelectedIndexChanged">
        <AlternatingItemStyle BackColor="White" />
        <HeaderTemplate>
            Product Detail
        </HeaderTemplate>
        <ItemTemplate>
         <b>Product id</b>
            <asp:Label ID="Label" runat="server" 
                Text='<%#Eval("Pid") %>'></asp:Label>
            <br />
         <b>Name</b>
            <asp:Label ID="Label1" runat="server" 
                Text='<%#Eval("Pname") %>'></asp:Label>
            <br />
            <b>Image</b><br />
            <asp:Image ID="Image" runat="server" 
                Height="150px" ImageAlign="Middle" 
                ImageUrl='<%#Eval("Image") %>' Width="150px" />
            <br />
            <b>Product price </b>
            <asp:Label ID="Label2" runat="server" 
                Text='<%#Eval("Price") %>'></asp:Label>
            <br />
            <b>Product Quantity</b>
            <asp:Label ID="Label3" runat="server" 
                Text='<%#Eval("Quantity") %>'></asp:Label>
            <br />
            <b>Product Desciption</b>
            <asp:Label ID="Label5" runat="server" 
                Text='<%#Eval("Description") %>'></asp:Label><br />
               
        </ItemTemplate>
        <FooterStyle BackColor="#990000" Font-Bold="True" 
            ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" 
            ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" 
            ForeColor="#333333" />
        <SelectedItemStyle BackColor="#FFCC66" 
            Font-Bold="True" ForeColor="Navy" />
    </asp:DataList>
</asp:Content>


