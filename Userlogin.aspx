<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="Userlogin.aspx.cs" Inherits="Userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h1 align="center" 
        style="color: #FFFFFF; font-weight: bolder">
        USER LOGIN</h1>
    <table align="center" bgcolor="#33CCCC" 
        cellspacing="10px">
        <tr align="center">
            <td align="center" colspan="5">
                <asp:Label ID="Label1" runat="server" 
                    Text="username"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td align="center" colspan="5">
                <asp:TextBox ID="username" runat="server" 
                    Width="469px"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td align="center" colspan="5">
                <asp:Label ID="Label2" runat="server" 
                    Text="password"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td align="center" class="style3" colspan="5">
                <asp:TextBox ID="password" runat="server" 
                    TextMode="Password" Width="446px"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td align="center" colspan="5">
                <asp:Button ID="B1" runat="server" 
                    BackColor="#0066CC" onclick="B1_Click" 
                    Text="LOGIN" Width="154px" />
            </td>
        </tr>
        <tr align="center">
            <td align="center" class="style3" colspan="5">
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>


<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
        
            
        
        </asp:Content>



