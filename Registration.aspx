<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h1 align="center" 
        style="font-size: x-large; color: #3333FF">
        Registration Form</h1>
    <table align="center" bgcolor="#FF9999" 
        cellpadding="2" 
        style="height: 437px; width: 454px">
        <tr align="center">
                <td align="center" class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                </td>
            
                <td align="center" class="style5">
                    <asp:TextBox ID="name" runat="server" 
                        Width="265px"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td align="center" class="style3">
                    <asp:Label ID="Label6" runat="server" 
                        Text="E-mail"></asp:Label>
                </td>
          
                <td align="center" class="style5">
                    <asp:TextBox ID="Email" runat="server" 
                        Width="265px"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td align="center" class="style3">
                    <asp:Label ID="Label7" runat="server" 
                        Text="Address"></asp:Label>
               
                <td align="center" class="style5">
                    <asp:TextBox ID="Address" runat="server" 
                        Width="265px"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td align="center" class="style3">
                    <asp:Label ID="Label8" runat="server" 
                        Text="Contact"></asp:Label>
              
                <td align="center" class="style5">
                    <asp:TextBox ID="Contact" runat="server" 
                        Width="265px"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td align="center" class="style3">
                    <asp:Label ID="l1" runat="server" Text="Password"></asp:Label>
                </td>
           
                <td align="center" class="style5">
                    <asp:TextBox ID="Password" runat="server" 
                        Width="265px"></asp:TextBox>
                </td>
            </tr>
            </table><center><asp:Button ID="Button2" runat="server" Text="Save" 
            BackColor="#FF5050" BorderStyle="Solid" 
            ForeColor="Black" Height="48px" 
            Width="188px" BorderColor="#FF0066" 
                        onclick="Button2_Click" Font-Bold="True" />  </center>
   
</asp:Content>



