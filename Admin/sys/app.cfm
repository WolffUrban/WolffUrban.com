<cfmodule template="../display.cfm">
<center>
	<cfparam name="url.task" default="app.list">
	<cfswitch expression="#url.task#">
		<cfcase value="app.list">
			<cfmodule template="obj/obj_applist.cfm">
			<cfinclude template="dsp_applist.cfm">
		</cfcase>
		<cfcase value="app.form">
			<cfmodule template="obj/obj_appform.cfm">
			<cfinclude template="dsp_appform.cfm">
		</cfcase>
	</cfswitch>
</center>
</cfmodule>
