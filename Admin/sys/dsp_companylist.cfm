<cfoutput>

<table border="0" cellpadding="2" cellspacing="2">
	<tr>
		<td colspan="2"><b>Company List</b></td>
	</tr>
	<tr>
		<td class="cell-dark">Name</td>
		<td class="cell-dark">ID</td>
	</tr>
	<cfloop query="Variables.qCompany">
	<cfmodule template="#application.objpath#/util/class.cfm">
	<tr>
		<td class="#Variables.Class#"><A HREF="#cgi.script_name#?task=company.form&id=#Variables.qCompany.ID#">#Variables.qCompany.Name#</A></td>
		<td class="#Variables.Class#">#Variables.qCompany.ID#</td>
	</tr>
	</cfloop>
</table>
<br>
<br>
<a href="#cgi.script_name#?task=company.form">Add Company</a>
</cfoutput>