<cfloop Index="field" List="cobrandStatus,cobrandHasCode,cobrandHasCustomID,cobrandHasCustomPricing,cobrandHasCommission,cobrandHasUser,cobrandNameIsCompanyName,cobrandHasCustomer,cobrandHasActiveSubscriber">
	<cfset Arguments[field] = Application.fn_ConvertBooleanToNumeric(Arguments[field])>
</cfloop>

<cfset Arguments.companyID = Application.objWebServiceSecurity.ws_checkCompanyPermission(qry_selectWebServiceSession.companyID_author, Arguments.companyID, Arguments.companyID_custom, Arguments.useCustomIDFieldList)>
<cfset Arguments.groupID = Application.objWebServiceSecurity.ws_checkGroupPermission(qry_selectWebServiceSession.companyID_author, Arguments.groupID, Arguments.groupID_custom, Arguments.useCustomIDFieldList)>
<cfset Arguments.statusID = Application.objWebServiceSecurity.ws_checkStatusPermission(qry_selectWebServiceSession.companyID_author, Arguments.statusID, Arguments.statusID_custom, Arguments.useCustomIDFieldList, "cobrandID")>
<cfset Arguments.userID = Application.objWebServiceSecurity.ws_checkUserPermission(qry_selectWebServiceSession.companyID_author, Arguments.userID, Arguments.userID_custom, Arguments.useCustomIDFieldList)>

<cfset qryParamStruct.companyID_author = qry_selectWebServiceSession.companyID_author>
<cfset qryParamStruct.returnCompanyFields = Arguments.returnCompanyFields>
<cfset qryParamStruct.returnUserFields = Arguments.returnUserFields>
<cfloop Index="field" List="companyID,groupID,userID,statusID">
	<cfif ListFind(Arguments.searchFieldList, field) and StructKeyExists(Arguments, field) and Arguments[field] is not 0 and Application.fn_IsIntegerList(Arguments[field])>
		<cfset qryParamStruct[field] = Arguments[field]>
	</cfif>
</cfloop>
<cfloop Index="field" List="cobrandName,cobrandCode,cobrandURL,cobrandID_custom,cobrandTitle,cobrandDomain,cobrandDirectory">
	<cfif ListFind(Arguments.searchFieldList, field) and StructKeyExists(Arguments, field) and Trim(Arguments[field]) is not "">
		<cfset qryParamStruct[field] = Arguments[field]>
	</cfif>
</cfloop>
<cfloop Index="field" List="cobrandHasCode,cobrandHasCustomID,cobrandStatus,cobrandHasCustomPricing,cobrandHasCommission,cobrandHasUser,cobrandHasURL,cobrandNameIsCompanyName,cobrandHasCustomer,cobrandHasActiveSubscriber">
	<cfif ListFind(Arguments.searchFieldList, field) and StructKeyExists(Arguments, field) and ListFind("0,1", Arguments[field])>
		<cfset qryParamStruct[field] = Arguments[field]>
	</cfif>
</cfloop>
<cfif ListFind(Arguments.searchFieldList, "cobrandIsExported") and StructKeyExists(Arguments, "cobrandIsExported") and (Arguments.cobrandIsExported is "" or ListFind("0,1", Arguments.cobrandIsExported))>
	<cfset qryParamStruct.cobrandIsExported = Arguments.cobrandIsExported>
</cfif>

<!--- 
<cfset Variables.fields_text = "searchText,searchField">
<cfset Variables.fields_integerList = "cobrandID,cobrandID_not">
--->

