<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Feedbackdata.aspx.cs" Inherits="Feedbackdata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" 
       BackColor="#CCCCCC" 
            BorderColor="#999999" BorderWidth="3px" 
            CellPadding="4" ForeColor="Black" 
            AutoGenerateSelectButton="True" 
            
            style="margin-top: 0px;" 
        BorderStyle="Solid" CellSpacing="2" >
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField Datafield="Fid" 
                HeaderText=" Feedback id" />
            <asp:BoundField Datafield="Name" 
                HeaderText="Name" />
            <asp:BoundField Datafield="Subject" 
                HeaderText="Subject " />
            <asp:BoundField Datafield="Email" 
                HeaderText="Email" />
            <asp:BoundField Datafield="Inquiry" 
                HeaderText="Inquiry" />
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
    </asp:GridView>
    <p>
    </p>
</asp:Content>


