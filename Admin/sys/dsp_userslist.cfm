<cfoutput>

<table border="0" cellpadding="2" cellspacing="2">
	<tr>
		<td colspan="2"><b>User List</b></td>
	</tr>
	<tr>
		<td class="cell-dark">Name</td>
		<td class="cell-dark">ID</td>
	</tr>
	<cfloop query="Variables.qUsers">
	<cfmodule template="#application.objpath#/util/class.cfm">
	<tr>
		<td class="#Variables.Class#"><A HREF="#cgi.script_name#?task=users.form&id=#Variables.qUsers.ID#">#Variables.qUsers.FirstName# #Variables.qUsers.LastName#</A></td>
		<td class="#Variables.Class#">#Variables.qUsers.ID#</td>
	</tr>
	</cfloop>
</table>
<br>
<br>
<a href="#cgi.script_name#?task=users.form">Add User</a>
</cfoutput>