<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="Contact us.aspx.cs" Inherits="Contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 234px;
    }
</style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h1 align="center">
    CONTACT FORM</h1>
<table align="center" bgcolor="#FF9966" 
    cellpadding="15" 
    style="height: 213px; width: 324px">
    <tr>
        <td align="center" class="style3">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td align="center">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" class="style3">
            <asp:Label ID="Label2" runat="server" 
                Text="Email"></asp:Label>
        </td>
        <td align="center">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" class="style3">
            <asp:Label ID="Label3" runat="server" 
                Text="contact no"></asp:Label>
        </td>
        <td align="center">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" class="style3">
            <asp:Label ID="Label4" runat="server" 
                Text="Address"></asp:Label>
        </td>
        <td align="center">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
</table>
<p align="center">
    <asp:Button ID="Button1" runat="server" 
        BackColor="#CC6600" BorderStyle="Solid" 
        ForeColor="#000066" Height="48px" 
        onclick="Button1_Click1"  
        Text="SUBMIT" Width="190px" />
</p>
</asp:Content>



