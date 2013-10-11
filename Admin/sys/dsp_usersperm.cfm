<cfoutput>
<script language="javascript">
function changeperm(action,companyid,applicationid)
	{
	window.location='#cgi.script_name#?#cgi.query_string#' + "&action=" + action + "&companyid=" + companyid  + "&applicationid=" + applicationid;
	}
</script>
<table border="0" cellpadding="2" cellspacing="2">
	<tr>
		<td colspan="2"><b>Permission Form</b></td>
	</tr>
	<cfloop query="Variables.qCompany">
	<cfset Variables.CompanyID = Variables.qCompany.ID>
	<tr>
		<td colspan="2" class="cell-dark">#Variables.qCompany.Name#</td>
	</tr>
	<tr>
		<td class="cell-dark">Application Name</td>
		<td class="cell-dark">Action</td>
	</tr>
	<cfquery name="Variables.qInstalled" datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
	SELECT ac.ApplicationID, a.ApplicationName
	FROM Application_Company AS ac INNER JOIN Application AS a ON (ac.ApplicationID = a.ID)
	WHERE ac.CompanyID = '#Variables.CompanyID#'
	</cfquery>
		<cfloop query="Variables.qInstalled">
		<cfmodule template="#application.objpath#/util/class.cfm">
		<tr>
			<td class="#variables.class#">#Variables.qInstalled.ApplicationName#</td>
			<td class="#variables.class#">
			<cfquery name="Variables.qIsAllowed" datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
			SELECT *
			FROM User_Application_Company
			WHERE 
				UserID = '#url.userid#'
				AND
				ApplicationID = '#Variables.qInstalled.ApplicationID#'
				AND
				CompanyID = '#Variables.CompanyID#'
			</cfquery>
			<cfif Variables.qIsAllowed.RecordCount IS 0>
			<input type="button" class="form-button" value="grant" onclick="changeperm('grant','#Variables.CompanyID#','#Variables.qInstalled.ApplicationID#');">
			<cfelse>
			<input type="button" class="form-button" value="deny" onclick="changeperm('deny','#Variables.CompanyID#','#Variables.qInstalled.ApplicationID#');">
			</cfif>
			</td>
		</tr>
		</cfloop>
	</cfloop>
</table>
</cfoutput>