<cfinclude template="#Application.GlobalPath#/globalfunctions.cfm">
<cfscript>
Caller.Variables.sApp						=	StructNew();
Caller.Variables.sApp.ID					=	"";
Caller.Variables.sApp.ApplicationName		=	"";
Caller.Variables.sApp.URLPath				=	"";
Caller.Variables.sApp.NavWidth				=	110;
</cfscript>
<cfif isdefined("Form.FieldNames")>
	<cfif not len(form.id)>
		<cfquery datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
		INSERT INTO Application
			(
			ID,
			ApplicationName,
			URLPath,
			NavWidth
			)
		VALUES
			(
			'<cfmodule template="#application.objpath#/util/newkey.cfm" area="AP">',
			'#Trim(Form.ApplicationName)#',
			'#Trim(Form.URLPath)#',
			'#Trim(Form.NavWidth)#'
			)
		</cfquery>
	<cfelse>
		<cfquery datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
		UPDATE Application
		SET
			ApplicationName = '#Trim(Form.ApplicationName)#',
			URLPath = '#Trim(Form.URLPath)#',
			NavWidth = '#Trim(Form.NavWidth)#'
		WHERE
			ID = '#Trim(Form.ID)#'
		</cfquery>
	</cfif>
	<cflocation url="#cgi.script_name#?task=app.list" addtoken="yes">
</cfif>
<cfif IsDefined("URL.ID")>
	<cfquery name="Variables.qApp" datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
	SELECT *
	FROM Application
	WHERE ID = '#Trim(URL.ID)#'
	</cfquery>
	<cfscript>
	Caller.Variables.sApp.ID					=	Variables.qApp.ID;
	Caller.Variables.sApp.ApplicationName		=	Variables.qApp.ApplicationName;
	Caller.Variables.sApp.URLPath				=	Variables.qApp.URLPath;
	Caller.Variables.sApp.NavWidth				=	Variables.qApp.NavWidth;
	</cfscript>
</cfif>
