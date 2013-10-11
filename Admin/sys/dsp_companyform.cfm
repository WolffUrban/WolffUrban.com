<cfoutput>
<table>
	<form action="#cgi.script_name#?#cgi.query_string#" method="post">
	<tr>
		<td colspan="2"><b>Company Form</b></td>
	</tr>
	<tr>
		<td>ID</td>
		<td><input name="ID" class="form-text" type="text" value="#Variables.sCompany.ID#" readonly="yes" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td class="required-field">Name</td>
		<td><input name="Name" class="form-text" type="text" value="#Variables.sCompany.Name#" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td class="required-field">URL</td>
		<td><input name="URL" class="form-text" type="text" value="#Variables.sCompany.URL#" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td class="required-field">File Path</td>
		<td><input name="FilePath" class="form-text" type="text" value="#Variables.sCompany.FilePath#" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td></td>
		<td align="center">
		<input onclick="window.location='#cgi.script_name#?task=company.app&companyid=#Variables.sCompany.ID#';" type="button" value="Applications" class="form-button">
		<input type="submit" value="Save" class="form-button">
		</td>
	</tr>
	</form>
</table>
</cfoutput>