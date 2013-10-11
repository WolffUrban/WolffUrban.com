<cfinclude template="#Application.GlobalPath#/globalfunctions.cfm">
<cfscript>
Caller.Variables.sUser					=	StructNew();
Caller.Variables.sUser.ID				=	"";
Caller.Variables.sUser.Email			=	"";
Caller.Variables.sUser.FirstName		=	"";
Caller.Variables.sUser.LastName			=	"";
Caller.Variables.sUser.Password			=	"";
</cfscript>
<cfif isdefined("Form.FieldNames")>
	<cfif not len(form.id)>
		<cfquery datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
		INSERT INTO Users
			(
			ID,
			Email,
			FirstName,
			LastName,
			Password,
			DATECreated,
			DATEUpdated
			)
		VALUES
			(
			'<cfmodule template="#application.objpath#/util/newkey.cfm" area="US">',
			'#Trim(Form.Email)#',
			'#Trim(Form.FirstName)#',
			'#Trim(Form.LastName)#',
			'#Trim(Form.Password)#',
			#CreateODBCDateTime(Now())#,
			#CreateODBCDateTime(Now())#
			)
		</cfquery>
	<cfelse>
		<cfquery datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
		UPDATE Users
		SET
			Email			=	'#Trim(Form.Email)#',
			FirstName		=	'#Trim(Form.FirstName)#',
			LastName		=	'#Trim(Form.LastName)#',
			Password		=	'#Trim(Form.Password)#',
			DATEUpdated		=	#CreateODBCDateTime(Now())#
		WHERE
			ID = '#Trim(Form.ID)#'
		</cfquery>
	</cfif>
	<cflocation url="#cgi.script_name#?task=users.list" addtoken="yes">
</cfif>
<cfif IsDefined("URL.ID")>
	<cfquery name="Variables.qUser" datasource="#Application.DBDSN#" username="#Application.DBUser#" password="#Application.DBPWD#">
	SELECT *
	FROM Users
	WHERE ID = '#Trim(URL.ID)#'
	</cfquery>
	<cfscript>
	Caller.Variables.sUser.ID				=	Variables.qUser.ID;
	Caller.Variables.sUser.FirstName		=	Variables.qUser.FirstName;
	Caller.Variables.sUser.LastName			=	Variables.qUser.LastName;
	Caller.Variables.sUser.Password			=	Variables.qUser.Password;
	Caller.Variables.sUser.Email			=	Variables.qUser.Email;
	</cfscript>
</cfif>
