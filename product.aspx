<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p align="center" 
        style="font-weight: bold; font-size: x-large">Save Update Delete Product</p><br />
     
        <table style="width:100%;">
        <tr>
            <td align="center" class="style3">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td align="center" class="style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" 
                    Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style3">
                <asp:Label ID="Label2" runat="server" 
                    Text="Price"></asp:Label>
            </td>
            <td align="center" class="style4">
                <asp:TextBox ID="TextBox2" runat="server" 
                    ontextchanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td align="center" class="style3">
                <asp:Label ID="Label4" runat="server" 
                    Text="Photo"></asp:Label>
            </td>
            <td align="center" class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
            <td align="center" class="style5">
                <asp:Label ID="Label5" runat="server" 
                    Text="Quantity"></asp:Label>
             </td>
            <td align="center" class="style6">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
             </td>
            <td class="style7">
                &nbsp;</td>
        </tr>
         <tr>
            <td align="center" class="style3">
                <asp:Label ID="Label6" runat="server" 
                    Text="Description"></asp:Label>
             </td>
            <td align="center" class="style4">
                <asp:TextBox ID="TextBox4" runat="server" 
                    TextMode="MultiLine"></asp:TextBox>
             </td>
            <td>
                &nbsp;</td>
        </tr>

    </table>
    <table style="width: 100%;">
        <tr>
            <td align="right" class="style8">
                &nbsp;
                <asp:Button ID="Button1" runat="server" 
                    Text="Save" BackColor="#99CCFF" 
                    ForeColor="#3333CC" Width="202px" 
                    Height="42px" onclick="Button1_Click" />
            </td>
            <td align="center" class="style9">
                &nbsp;
                <asp:Button ID="Button2" runat="server" 
                    Text="Update" BackColor="#99CCFF" 
                    ForeColor="#3366FF" Width="202px" 
                    Height="42px" onclick="Button2_Click"/>
            </td>
            <td>
                &nbsp;
                <asp:Button ID="Button3" runat="server" 
                    Text="Delete" BackColor="#99CCFF" 
                    ForeColor="#3333CC" Width="202px" 
                    Height="42px" onclick="Button3_Click"/>
            </td>
        </tr>
      
    </table>  
   <div align="center"> <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" 
            BackColor="#CCCCCC" 
            BorderColor="#999999" BorderWidth="3px" 
            CellPadding="4" ForeColor="Black" 
            AutoGenerateSelectButton="True" 
            
            style="margin-top: 0px;" 
        BorderStyle="Solid" CellSpacing="2" 
            
                onselectedindexchanged="GridView1_SelectedIndexChanged1">
            <Columns>
            <asp:BoundField Datafield="Pid" HeaderText="Product ID" />
            <asp:BoundField Datafield="Pname" HeaderText="Product Name" />
            <asp:BoundField Datafield="Price" HeaderText="Price" />
            
            <asp:BoundField Datafield="Quantity" HeaderText="Product Quantity" />
            <asp:BoundField Datafield="Description" HeaderText="Product Discription" />
            <asp:ImageField DataImageUrlField="Image" HeaderText="Product Photo" ControlStyle-Height="100">
<ControlStyle Height="100px"></ControlStyle>
                </asp:ImageField>
            </Columns>
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
        </asp:GridView> </div>
</asp:Content>


