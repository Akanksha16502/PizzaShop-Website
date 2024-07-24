<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PurchaseReport.aspx.cs" Inherits="PurchaseReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><script type="text/javascript" src="crystalreportviewers13/js/crviewer/crv.js"> </script>
    <style type="text/css">


p.MsoNormal{
margin-bottom:10.0000pt;
line-height:114%;
font-family:Calibri;
font-size:11.0000pt;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <CR:CrystalReportViewer ID="CrystalReportViewer1" 
            runat="server" AutoDataBind="True" 
            GroupTreeImagesFolderUrl="" Height="1202px" 
            ReportSourceID="CrystalReportSource1" 
            ToolbarImagesFolderUrl="" ToolPanelWidth="200px" 
            Width="1104px" />
        <CR:CrystalReportSource ID="CrystalReportSource1" 
            runat="server">
            <Report FileName="PurchaseCrystalReport.rpt">
            </Report>
        </CR:CrystalReportSource>
    
    </div>
    </form>
</body>
</html>
