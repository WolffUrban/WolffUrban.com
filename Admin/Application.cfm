<cfsetting enablecfoutputonly="yes">

<cfapplication
	name="#cgi.server_name#"
	clientmanagement="yes"
	sessionmanagement="no"
	applicationtimeout="#CreateTimeSpan(0,1,0,0)#">
<!--- <cfif NOT IsDefined("Application.DBDSN")> --->
	<cflock scope="Application" timeout="60">
		<cfscript>
		// Database Settings
		Application.DBDSN		=	"maritz";		
		Application.DBUser		=	"web";
		Application.DBPWD		=	"client";
		Application.DBType		=	"ODBC";
		// Canned Applications Path
		Application.OBJPath		=	"/sites/maritzwolff/apps";
		// Corde Valle
		Application.CordeValle.URL		=	"http://maritzwolff.dev-sites.com";
		Application.RootPath		=	"e:\sites\maritzwolff\www\";
		Application.globalpath		=	"/sites/maritzwolff";
		Application.Key		=	"mar";
		</cfscript>
	</cflock>
<!--- </cfif> --->
<cfparam name="cookie.email" default="">
<cfmodule template="#Application.OBJPath#/security/obj/obj_check.cfm">
<cfsetting enablecfoutputonly="no">