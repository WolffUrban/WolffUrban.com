<cfoutput>
<table border="0" cellpadding="2" cellspacing="2">
	<form>
	<tr>
		<td colspan="2"><b>Installed Applications for #Variables.qCompany.Name#</b></td>
	</tr>
	<tr>
		<td class="cell-dark">Application Name</td>
		<td class="cell-dark">&nbsp;</td>
	</tr>
	<cfloop query="Variables.qApp">
	<cfmodule template="#application.objpath#/util/class.cfm">
	<tr>
		<td class="#Variables.Class#">#Variables.qApp.ApplicationName#</td>
		<td class="#Variables.Class#">
		<cfif ListFindNoCase(variables.LApplicationID,Variables.qApp.ID)>
			<input type="button" class="form-button" name="ApplicationID" value="Uninstall" onclick="window.location='#cgi.script_name#?#cgi.query_string#&install=#Variables.qApp.ID#&action=uninstall';">
		<cfelse>
			<input type="button" class="form-button" name="ApplicationID" value="Install" onclick="window.location='#cgi.script_name#?#cgi.query_string#&install=#Variables.qApp.ID#&action=install';">
		</cfif>
		</td>
		
	</tr>
	</cfloop>
	</form>
</table>
</cfoutput>