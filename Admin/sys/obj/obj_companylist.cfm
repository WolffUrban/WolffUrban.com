<cfsetting enablecfoutputonly="yes">
<CFQUERY NAME="Caller.Variables.qCompany" DATASOURCE="#Application.DBDSN#" USERNAME="#Application.DBUser#" PASSWORD="#Application.DBPWD#">
SELECT *
FROM Company
</CFQUERY>
<cfif Caller.Variables.qCompany.RecordCount IS 0>
	<cflocation url="#cgi.script_name#?task=company.form">
</cfif>
<cfsetting enablecfoutputonly="no">