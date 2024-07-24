<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 218px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h1 align="center" 
        style="font-size: x-large; color: #00FF99">
    FEEDBACK FORM</h1>
<table align="center" bgcolor="#FF6666" 
    cellpadding="15" 
    style="height: 213px; width: 324px">
    <tr>
        <td align="center" class="style3">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td align="center" class="style3">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" class="style3">
            <asp:Label ID="Label2" runat="server" 
                Text="Subject"></asp:Label>
        </td>
        <td align="center" class="style3">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" class="style3">
            <asp:Label ID="Label3" runat="server" 
                Text="E-mail"></asp:Label>
        </td>
        <td align="center" class="style3">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" class="style3">
            <asp:Label ID="Label4" runat="server" 
                Text="Inquiry"></asp:Label>
        </td>
        <td align="center" class="style3">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
</table>
<p align="center">
    <asp:Button ID="Button1" runat="server" 
        BackColor="#CCFFCC" BorderStyle="Solid" 
        ForeColor="#000066" Height="48px" 
        onclick="Button1_Click" Text="SUBMIT" 
        Width="190px" />
</p>
</asp:Content>



