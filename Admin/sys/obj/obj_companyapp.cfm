<cfinclude template="#Application.GlobalPath#/globalfunctions.cfm">
<cfif IsDefined("url.install")>
	<cftransaction>
		<cfswitch expression="#url.action#">
			<cfcase value="install">
				<CFQUERY DATASOURCE="#Application.DBDSN#" USERNAME="#Application.DBUser#" PASSWORD="#Application.DBPWD#">
				INSERT INTO Application_Company (ID,ApplicationID,CompanyID)
				VALUES ('<cfmodule template="#application.objpath#/util/newkey.cfm" area="DP">','#url.install#','#url.CompanyID#')
				</CFQUERY>
			</cfcase>
			<cfcase value="uninstall">
				<CFQUERY DATASOURCE="#Application.DBDSN#" USERNAME="#Application.DBUser#" PASSWORD="#Application.DBPWD#">
				DELETE FROM Application_Company
				WHERE
					ApplicationID = '#url.install#'
					AND
					CompanyID = '#url.CompanyID#'
				</CFQUERY>
				<CFQUERY DATASOURCE="#Application.DBDSN#" USERNAME="#Application.DBUser#" PASSWORD="#Application.DBPWD#">
				DELETE FROM User_Application_Company
				WHERE
					ApplicationID = '#url.install#'
					AND
					CompanyID = '#url.CompanyID#'
				</CFQUERY>
			</cfcase>
		</cfswitch>
	</cftransaction>
	<cflocation url="#cgi.script_name#?task=company.form&id=#url.companyid#" addtoken="yes">
</cfif>

<CFQUERY NAME="Caller.Variables.qApp" DATASOURCE="#Application.DBDSN#" USERNAME="#Application.DBUser#" PASSWORD="#Application.DBPWD#">
SELECT *
FROM Application
</CFQUERY>
<cfquery name="Caller.Variables.qCompany" datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
SELECT *
FROM Company
WHERE ID = '#url.companyid#'
</cfquery>
<cfquery name="Variables.qInstalled" datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
SELECT ApplicationID
FROM Application_Company
WHERE CompanyID = '#url.companyid#'
</cfquery>
<cfset caller.variables.LApplicationID = ValueList(Variables.qInstalled.ApplicationID)>