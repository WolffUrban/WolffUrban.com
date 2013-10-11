<cfoutput>
<table>
	<form action="#cgi.script_name#?#cgi.query_string#" method="post">
	<tr>
		<td colspan="2"><b>User Form</b></td>
	</tr>
	<tr>
		<td>ID</td>
		<td><input name="ID" class="form-text" type="text" value="#Variables.sUser.ID#" readonly="yes" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td class="required-field">First Name</td>
		<td><input name="FirstName" class="form-text" type="text" value="#Variables.sUser.FirstName#" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td class="required-field">Last Name</td>
		<td><input name="LastName" class="form-text" type="text" value="#Variables.sUser.LastName#" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td class="required-field">Email</td>
		<td><input name="Email" class="form-text" type="text" value="#Variables.sUser.Email#" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td class="required-field">Password</td>
		<td><input name="Password" class="form-text" type="password" value="#Variables.sUser.password#" maxlength="255" size="40"></td>
	</tr>
	<tr>
		<td></td>
		<td align="center">
		<input onclick="window.location='#cgi.script_name#?task=users.permissions&userid=#Variables.sUser.ID#';" type="button" value="Permissions" class="form-button">
		<input type="submit" value="Save" class="form-button">
		</td>
	</tr>
	</form>
</table>
</cfoutput>