<cfsetting enablecfoutputonly="yes">
<CFQUERY NAME="Caller.Variables.qUsers" DATASOURCE="#Application.DBDSN#" USERNAME="#Application.DBUser#" PASSWORD="#Application.DBPWD#">
SELECT *
FROM Users
</CFQUERY>
<cfif Caller.Variables.qUsers.RecordCount IS 0>
	<cflocation url="#cgi.script_name#?task=user.form">
</cfif>
<cfsetting enablecfoutputonly="no">