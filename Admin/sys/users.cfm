<cfmodule template="../display.cfm">
<center>
	<cfparam name="url.task" default="users.list">
	<cfswitch expression="#url.task#">
		<cfcase value="users.list">
			<cfmodule template="obj/obj_userslist.cfm">
			<cfinclude template="dsp_userslist.cfm">
		</cfcase>
		<cfcase value="users.form">
			<cfmodule template="obj/obj_usersform.cfm">
			<cfinclude template="dsp_usersform.cfm">
		</cfcase>
		<cfcase value="users.permissions">
			<cfmodule template="obj/obj_usersperm.cfm">
			<cfmodule template="obj/obj_companylist.cfm">
			<cfinclude template="dsp_usersperm.cfm">
		</cfcase>
	</cfswitch>
</center>
</cfmodule>
