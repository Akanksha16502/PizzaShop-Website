<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <h1 align="center">ADMIN LOGIN</h1><table align="center" cellpadding="1" 
        cellspacing="2" frame="box" 
        style="border-style: solid; border-color: #C0C0C0; padding: inherit; width: 34%; background-color: #999999; height: 267px; margin-top: auto;">
        <tr>
            <td align="center" 
                style="font-weight: bolder; font-style: italic; font-size: large; color: #000000;">
                &nbsp;
                <asp:Label ID="Label1" runat="server" 
                    Text="UserName"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" 
                style="font-weight: bolder; font-style: italic; font-size: large; color: #000000;">
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" 
                    Height="21px" Width="222px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3" 
                style="font-weight: bolder; font-style: italic; font-size: large; color: #000000;">
                &nbsp;
                <asp:Label ID="Label2" runat="server" 
                    Text="Password"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" 
                style="font-weight: bolder; font-style: italic; font-size: large; color: #000000;">
                &nbsp;
                <asp:TextBox ID="TextBox2" runat="server" 
                    Height="21px" Width="222px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" 
                style="font-weight: bolder; font-style: italic; font-size: large; color: #000000;">
                &nbsp;
                <asp:Label ID="Label3" runat="server" 
                    Text="Login"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" 
                style="font-weight: bolder; font-style: italic; font-size: large; color: #000000;">
                &nbsp;
                <asp:Button ID="Button1" runat="server" 
                    Height="39px" Text="LOGIN" Width="184px" 
                    onclick="Button1_Click1" />
            </td>
        </tr>
        <tr>
            <td align="center" 
                style="font-weight: bolder; font-style: italic; font-size: large; color: #000000;">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>


<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        <p align="center" 
                style="font-weight: bold; font-size: xx-large">ADMIN PAGE</p><br />
        <p align="center">Submit Your Information Properly</p>
            
        </asp:Content>



