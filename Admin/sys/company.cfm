<cfmodule template="../display.cfm">
<center>
	<cfparam name="url.task" default="company.list">
	<cfswitch expression="#url.task#">
		<cfcase value="company.list">
			<cfmodule template="obj/obj_companylist.cfm">
			<cfinclude template="dsp_companylist.cfm">
		</cfcase>
		<cfcase value="company.form">
			<cfmodule template="obj/obj_companyform.cfm">
			<cfinclude template="dsp_companyform.cfm">
		</cfcase>
		<cfcase value="company.app">
			<cfmodule template="obj/obj_companyapp.cfm">
			<cfinclude template="dsp_companyapp.cfm">
		</cfcase>
	</cfswitch>
</center>
</cfmodule>
