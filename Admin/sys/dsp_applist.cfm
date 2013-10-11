<cfoutput>

<table border="0" cellpadding="2" cellspacing="2">
	<tr>
		<td colspan="2"><b>Application List</b></td>
	</tr>
	<tr>
		<td class="cell-dark">Name</td>
		<td class="cell-dark">ID</td>
	</tr>
	<cfloop query="Variables.qApp">
	<cfmodule template="#application.objpath#/util/class.cfm">
	<tr>
		<td class="#Variables.Class#"><A HREF="#cgi.script_name#?task=app.form&id=#Variables.qApp.ID#">#Variables.qApp.ApplicationName#</A></td>
		<td class="#Variables.Class#">#Variables.qApp.ID#</td>
	</tr>
	</cfloop>
</table>
<br>
<br>
<a href="#cgi.script_name#?task=app.form">Add Application</a>
</cfoutput>