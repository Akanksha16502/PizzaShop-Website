<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custbillreport.aspx.cs" Inherits="custbillreport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><script type="text/javascript" src="crystalreportviewers13/js/crviewer/crv.js"> </script>
    <style type="text/css">
        .style2
        {
            width: 340px;
        }
        .style3
        {
            width: 251px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="style3">
                    &nbsp;
                    <asp:Label ID="Label1" runat="server" 
                        Text="Enter Registration id"></asp:Label>
                </td>
                <td class="style2">
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" 
                        Width="277px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" 
                        Text="Generate Bill" />
                </td>
            </tr>
            
        </table>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" 
            runat="server" AutoDataBind="True" 
            GroupTreeImagesFolderUrl="" Height="1202px" 
            ReportSourceID="CrystalReportSource1" 
            ToolbarImagesFolderUrl="" ToolPanelWidth="200px" 
            Width="1104px" />
        <CR:CrystalReportSource ID="CrystalReportSource1" 
            runat="server">
            <Report FileName="custbillReport.rpt">
            </Report>
        </CR:CrystalReportSource>
    
    </div>
    </form>
</body>
</html>
