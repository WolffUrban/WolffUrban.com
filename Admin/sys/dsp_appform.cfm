<cfoutput>
<table>
	<form action="#cgi.script_name#?#cgi.query_string#" method="post">
	<tr>
		<td colspan="2"><b>Application Form</b></td>
	</tr>
	<tr>
		<td>ID</td>
		<td><input name="ID" class="form-text" type="text" value="#Variables.sApp.ID#" readonly="yes" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td class="required-field">Name</td>
		<td><input name="ApplicationName" class="form-text" type="text" value="#Variables.sApp.ApplicationName#" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td class="required-field">URL</td>
		<td><input name="URLPath" class="form-text" type="text" value="#Variables.sApp.URLPath#" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td class="required-field">Nav Width</td>
		<td><input name="NavWidth" class="form-text" type="text" value="#Variables.sApp.NavWidth#" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="Save" class="form-button"</td>
	</tr>
	</form>
</table>
</cfoutput>