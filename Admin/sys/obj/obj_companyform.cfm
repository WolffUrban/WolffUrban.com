<cfinclude template="#Application.GlobalPath#/globalfunctions.cfm">
<cfscript>
Caller.Variables.sCompany			=	StructNew();
Caller.Variables.sCompany.ID		=	"";
Caller.Variables.sCompany.Name		=	"";
Caller.Variables.sCompany.URL		=	"";
Caller.Variables.sCompany.FilePath	=	"";
</cfscript>
<cfif isdefined("Form.FieldNames")>
	<cfif not len(form.id)>
		<cfquery datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
		INSERT INTO Company
			(
			ID,
			Name,
			URL,
			FilePath
			)
		VALUES
			(
			'<cfmodule template="#application.objpath#/util/newkey.cfm" area="WG">',
			'#Trim(Form.Name)#',
			'#Trim(Form.URL)#',
			'#Trim(ReplaceNoCase(Form.FilePath,"\","\\","ALL"))#'
			)
		</cfquery>
	<cfelse>
		<cfquery datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
		UPDATE Company
		SET
			Name = '#Trim(Form.Name)#',
			URL = '#Trim(Form.URL)#',
			FilePath = '#Trim(ReplaceNoCase(Form.FilePath,"\","\\","ALL"))#'
		WHERE
			ID = '#Trim(Form.ID)#'
		</cfquery>
	</cfif>
	<cflocation url="#cgi.script_name#?task=company.list" addtoken="yes">
</cfif>
<cfif IsDefined("URL.ID")>
	<cfquery name="Variables.qCompany" datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
	SELECT *
	FROM Company
	WHERE ID = '#Trim(URL.ID)#'
	</cfquery>
	<cfscript>
	Caller.Variables.sCompany.ID		=	Variables.qCompany.ID;
	Caller.Variables.sCompany.Name		=	Variables.qCompany.Name;
	Caller.Variables.sCompany.URL		=	Variables.qCompany.URL;
	Caller.Variables.sCompany.FilePath	=	Variables.qCompany.FilePath;
	</cfscript>
</cfif>
