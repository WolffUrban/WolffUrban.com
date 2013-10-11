<cfif IsDefined("URL.Action")>
	<cfswitch expression="#url.action#">
		<cfcase value="grant">
			<CFQUERY DATASOURCE="#Application.DBDSN#" USERNAME="#Application.DBUser#" PASSWORD="#Application.DBPWD#">
			INSERT INTO User_Application_Company
				(
				UserID,
				ApplicationID,
				CompanyID
				)
			VALUES
				(
				'#url.UserID#',
				'#url.ApplicationID#',
				'#url.CompanyID#'
				)
			</CFQUERY>
		</cfcase>
		<cfcase value="deny">
			<CFQUERY DATASOURCE="#Application.DBDSN#" USERNAME="#Application.DBUser#" PASSWORD="#Application.DBPWD#">
			DELETE FROM User_Application_Company
			WHERE
				UserID = '#url.UserID#'
				AND
				ApplicationID = '#url.ApplicationID#'
				AND
				CompanyID = '#url.CompanyID#'
			</CFQUERY>
		</cfcase>
	</cfswitch>
	<cflocation url="#cgi.script_name#?task=users.permissions&userid=#url.userid#" addtoken="yes">
</cfif>