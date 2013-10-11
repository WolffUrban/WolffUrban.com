<cfswitch expression="#LCase(ThisTag.ExecutionMode)#">
	<cfcase value="start">
		<cfinclude template="#application.globalpath#/globalfunctions.cfm">
		<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
		<html>
		<head>
			<cfoutput>
			<title>#client.propertyname#</title>
			<link rel="STYLESHEET" type="text/css" href="/i/style.css">
			<script language="javascript" src="resources/sniffer.js"></script>
			<script language="javascript1.2" src="resources/custom.js"></script>
			<script language="javascript1.2" src="resources/style.js"></script>
			<script language="javascript1.2" src="resources/menu.js"></script>
			<script language="javascript1.2" src="resources/users/#client.userid#.js?#createuuid()#"></script>
			</cfoutput>

</head>
<cfoutput>
<body bgcolor="##C0C4B0" background="/i/bkg.gif" link="##ACB197" vlink="##ACB197" alink="##ACB197" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
</cfoutput>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="middle"> 
      <table width="760" border="0" cellspacing="0" cellpadding="0">
        <tr> 
            <td><img src="../i/logo.gif" width="760" height="58" border="0"></td>
        </tr>
        <tr>
          <td width="760" height="320" align="left" valign="top" bgcolor="#FFFFFF"><table width="760" height="320" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="52" height="320"><img src="../i/space.gif" width="52" height="320"></td>
                <td height="320" align="center" valign="top">
				<!--- <CFIF CGI.SERVER_NAME IS "maritzwolff.dev-sites.com"><center><b>THIS IS THE DEVELOPMENT ENVIROMENT. IF YOU ENTER DATA HERE IT WILL NOT SHOW UP ON THE LIVE SITE. <A HREF="http://admin.tradewindsresort.com/">CLICK HERE TO GO TO THE PRODUCTION ADMIN</A></b><br><br></center></CFIF> --->
				</cfcase>
				<cfcase value="end">
                </td>
                <td width="52"><img src="../i/space.gif" width="52" height="320"></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td width="760" height="42" align="left" valign="top"><table width="760" border="0" cellspacing="0" cellpadding="0">
          </table>
            
          </td>
        </tr>
      </table>
      
    </td>
  </tr>
</table>
</body>
</html>
</cfcase>
</cfswitch> 
