<cfsetting enablecfoutputonly="yes">
<CFQUERY NAME="Caller.Variables.qApp" DATASOURCE="#Application.DBDSN#" USERNAME="#Application.DBUser#" PASSWORD="#Application.DBPWD#">
SELECT *
FROM Application
</CFQUERY>
<cfif Caller.Variables.qApp.RecordCount IS 0>
	<cflocation url="#cgi.script_name#?task=app.form">
</cfif>
<cfsetting enablecfoutputonly="no">