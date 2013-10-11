<cfswitch expression="#LCase(ThisTag.ExecutionMode)#">
	<cfcase value="start">
		<cfinclude template="#application.globalpath#/globalfunctions.cfm">
		<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
		<html>
		<head>
			<cfoutput>
			<title>#client.propertyname#</title>
			<link rel="STYLESHEET" type="text/css" href="/resources/style.css">
			<script language="javascript" src="/resources/sniffer.js"></script>
			<script language="javascript1.2" src="/resources/custom.js"></script>
			<script language="javascript1.2" src="/resources/style.js"></script>
			<script language="javascript1.2" src="/resources/menu.js"></script>
			<script language="javascript1.2" src="/resources/users/#client.userid#.js?#createuuid()#"></script>
			</cfoutput>
		</head>
		<body onload="auto_preload();" leftmargin="0" rightmargin="0" topmargin="0" bottommargin="0" marginheight="0" marginwidth="0">
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td class="cell-light" align="center"><img src="/i/_.GIF" width="1" height="10" alt="" border="0"></td>
			</tr>
			<tr>
				<td class="cell-light" align="center"><A href="/"><img src="/i/logo.jpg" width="212" height="96" alt="" border="0"></A></td>
			</tr>
			<tr>
				<td class="cell-light" align="center"><img src="/i/_.GIF" width="1" height="10" alt="" border="0"></td>
			</tr>
			<tr>
				<td class="cell-dark"><img src="/i/_.GIF" width="1" height="1" alt="" border="0"></td>
			</tr>
			<tr>
				<td class="cell-medium" align="center"><img src="/i/_.GIF" width="1" height="10" alt="" border="0"></td>
			</tr>
			<tr>
				<td class="cell-medium" align="center">
				
				</td>
			</tr>
			<tr>
				<td class="cell-medium" align="center"><img src="/i/_.GIF" width="1" height="10" alt="" border="0"></td>
			</tr>
			<tr>
				<td class="cell-dark" background="/i/bl-gr.gif"><img src="/i/_.GIF" width="1" height="10" alt="" border="0"></td>
			</tr>
		</table>
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td class="cell-light" width="2%"><img src="/i/_.GIF" width="1" height="1" alt="" border="0"></td>
				<td class="cell-light" width="96%">
				<br><br>
				<CFIF CGI.SERVER_NAME IS "admin.auberge.dev-sites.com"><center><b>THIS IS THE DEVELOPMENT ENVIROMENT. IF YOU ENTER DATA HERE IT WILL NOT SHOW UP ON THE LIVE SITE. <A HREF="http://admin.tradewindsresort.com/">CLICK HERE TO GO TO THE PRODUCTION ADMIN</A></b><br><br></center></CFIF>
	</cfcase>
	<cfcase value="end">
		<cfoutput>
				<br><br><br>
				</td>
				<td class="cell-light" width="2%"><img src="/i/_.GIF" width="1" height="1" alt="" border="0"></td>
			</tr>
		</table>
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td align="right" class="small-text">
				#Client.Name# | #Client.Email#&nbsp;&nbsp;&nbsp;<br>
				UserID: #Client.UserID#&nbsp;&nbsp;&nbsp;<br>
				WorkGroupID: #Client.WorkGroupID#&nbsp;&nbsp;&nbsp;<br>
				<!--- #HTTPGMT()# --->&nbsp;&nbsp;&nbsp;<br>
				</td>
			</tr>
		</table>
		</body>
		</html>
		</cfoutput>
	</cfcase>
</cfswitch>