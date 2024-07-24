<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regreport.aspx.cs" Inherits="regreport" %>

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
    
        <p class="MsoNormal" 
            style="margin-bottom:0.0000pt;mso-layout-grid-align:none;text-autospace:none;">
            <span style="mso-spacerun:'yes';font-family:Consolas;mso-fareast-font-family:Calibri;
color:rgb(0,0,255);font-size:9.5000pt;">&lt;</span><span style="mso-spacerun:'yes';font-family:Consolas;mso-fareast-font-family:Calibri;
color:rgb(128,0,0);font-size:9.5000pt;">script</span><span style="mso-spacerun:'yes';font-family:Consolas;mso-fareast-font-family:Calibri;
font-size:9.5000pt;">&nbsp;</span><span style="mso-spacerun:'yes';font-family:Consolas;mso-fareast-font-family:Calibri;
color:rgb(255,0,0);font-size:9.5000pt;">type</span><span style="mso-spacerun:'yes';font-family:Consolas;mso-fareast-font-family:Calibri;
color:rgb(0,0,255);font-size:9.5000pt;">=&quot;text/javascript&quot;</span><span style="mso-spacerun:'yes';font-family:Consolas;mso-fareast-font-family:Calibri;
font-size:9.5000pt;">&nbsp;</span><span style="mso-spacerun:'yes';font-family:Consolas;mso-fareast-font-family:Calibri;
color:rgb(255,0,0);font-size:9.5000pt;">src</span><span style="mso-spacerun:'yes';font-family:Consolas;mso-fareast-font-family:Calibri;
color:rgb(0,0,255);font-size:9.5000pt;">=&quot;crystalreportviewers13/js/crviewer/crv.js&quot;&gt; 
            &lt;/</span><span style="mso-spacerun:'yes';font-family:Consolas;mso-fareast-font-family:Calibri;
color:rgb(128,0,0);font-size:9.5000pt;">script</span><span style="mso-spacerun:'yes';font-family:Consolas;mso-fareast-font-family:Calibri;
color:rgb(0,0,255);font-size:9.5000pt;">&gt;<o:p></o:p></span></p>
        <CR:CrystalReportSource ID="CrystalReportSource1" 
            runat="server">
            <Report FileName="regReport.rpt">
            </Report>
        </CR:CrystalReportSource>
    
        <CR:CrystalReportViewer ID="CrystalReportViewer1" 
            runat="server" AutoDataBind="true" 
            ReportSourceID="CrystalReportSource1" />
    
    </div>
    </form>
</body>
</html>
