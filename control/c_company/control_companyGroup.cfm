<cfinvoke Component="#Application.billingMapping#data.Group" Method="selectGroupList" ReturnVariable="qry_selectGroupList">
	<cfinvokeargument Name="companyID" Value="#Session.companyID#">
	<cfinvokeargument Name="returnGroupCounts" Value="False">
</cfinvoke>

<cfinvoke Component="#Application.billingMapping#data.Group" Method="selectGroupTargetList" ReturnVariable="qry_selectGroupTargetList">
	<cfinvokeargument Name="companyID_author" Value="#Session.companyID#">
	<cfinvokeargument Name="primaryTargetID" Value="#Application.fn_GetPrimaryTargetID("companyID")#">
	<cfinvokeargument Name="targetID" Value="#URL.companyID#">
	<cfinvokeargument Name="groupTargetStatus" Value="1">
	<!--- 
	<cfif Not IsDefined("Form.isFormSubmitted") or Not IsDefined("Form.submitCompanyGroup")>
		<cfinvokeargument Name="groupTargetStatus" Value="1">
	</cfif>
	--->
</cfinvoke>

<cfif IsDefined("Form.isFormSubmitted") and IsDefined("Form.submitCompanyGroup")>
	<cfparam Name="Form.groupID" Default="">
	<cfset Variables.groupID_insert = "">
	<cfset Variables.groupID_updateStatus0 = "">
	<cfset Variables.groupID_updateStatus1 = "">

	<!--- 
	If never before been a member of group, insert into avGroupTarget
	If previously member of group:
		If newly UNchecked, update avGroupTarget.groupTargetStatus = 0
		If newly checked, update avGroupTarget.groupTargetStatus = 1
	--->

	<cfloop Query="qry_selectGroupList">
		<cfset Variables.gcRow = ListFind(ValueList(qry_selectGroupTargetList.groupID), qry_selectGroupList.groupID)>
		<cfif ListFind(Form.groupID, qry_selectGroupList.groupID)>
			<!--- never previously member of group; insert company into new group --->
			<cfif Variables.gcRow is 0>
				<cfset Variables.groupID_insert = ListAppend(Variables.groupID_insert, qry_selectGroupList.groupID)>
			<!--- previously member of group; update status = 1 --->
			<cfelseif qry_selectGroupTargetList.groupTargetStatus[Variables.gcRow] is 0>
				<cfset Variables.groupID_updateStatus1 = ListAppend(Variables.groupID_updateStatus1, qry_selectGroupList.groupID)>
			</cfif>
		<!--- update old groups to status = 0 --->
		<cfelseif Variables.gcRow is not 0 and qry_selectGroupTargetList.groupTargetStatus[Variables.gcRow] is 1>
			<!--- <cfset Variables.groupID_updateStatus0 = ListAppend(Variables.groupID_updateStatus0, qry_selectGroupList.groupID)> --->
			<cfset Variables.groupID_updateStatus0 = ListAppend(Variables.groupID_updateStatus0, qry_selectGroupTargetList.groupTargetID[Variables.gcRow])>
		</cfif>
	</cfloop>

	<cfif Variables.groupID_insert is not "">
		<cfinvoke Component="#Application.billingMapping#data.Group" Method="insertGroupTarget" ReturnVariable="isGroupTargetInserted">
			<cfinvokeargument Name="groupID" Value="#Variables.groupID_insert#">
			<cfinvokeargument Name="primaryTargetID" Value="#Application.fn_GetPrimaryTargetID("companyID")#">
			<cfinvokeargument Name="targetID" Value="#URL.companyID#">
			<cfinvokeargument Name="userID" Value="#Session.userID#">
			<cfinvokeargument Name="companyID_author" Value="#Session.companyID#">
			<cfinvokeargument Name="groupTargetStatus" Value="1">
			<cfinvokeargument Name="isSubmitttedFromGroupControl" Value="False">
		</cfinvoke>
	</cfif>

	<cfif Variables.groupID_updateStatus0 is not "">
		<cfinvoke Component="#Application.billingMapping#data.Group" Method="updateGroupTarget" ReturnVariable="isGroupTargetUpdated">
			<cfinvokeargument Name="groupTargetID" Value="#Variables.groupID_updateStatus0#">
			<!--- 
			<cfinvokeargument Name="groupID" Value="#Variables.groupID_updateStatus0#">
			<cfinvokeargument Name="primaryTargetID" Value="#Application.fn_GetPrimaryTargetID("companyID")#">
			<cfinvokeargument Name="targetID" Value="#URL.companyID#">
			<cfinvokeargument Name="userID" Value="#Session.userID#">
			<cfinvokeargument Name="companyID_author" Value="#Session.companyID#">
			<cfinvokeargument Name="groupTargetStatus" Value="0">
			--->
		</cfinvoke>
	</cfif>

	<!--- 
	<cfif Variables.groupID_updateStatus1 is not "">
		<cfinvoke Component="#Application.billingMapping#data.Group" Method="updateGroupTarget" ReturnVariable="isGroupTargetUpdated">
			<cfinvokeargument Name="groupID" Value="#Variables.groupID_updateStatus1#">
			<cfinvokeargument Name="primaryTargetID" Value="#Application.fn_GetPrimaryTargetID("companyID")#">
			<cfinvokeargument Name="targetID" Value="#URL.companyID#">
			<cfinvokeargument Name="userID" Value="#Session.userID#">
			<cfinvokeargument Name="companyID_author" Value="#Session.companyID#">
			<cfinvokeargument Name="groupTargetStatus" Value="1">
		</cfinvoke>
	</cfif>
	--->

	<cflocation url="index.cfm?method=#URL.method#&companyID=#URL.companyID#&confirm_company=#URL.action#" AddToken="No">
</cfif>

<cfinclude template="../../view/v_company/lang_companyGroup.cfm">

<cfset Variables.groupColumnList = Variables.lang_companyGroup_title.groupMember
		& "^" & Variables.lang_companyGroup_title.groupName
		& "^" & Variables.lang_companyGroup_title.groupStatus
		& "^" & Variables.lang_companyGroup_title.groupDescription>
<cfset Variables.groupColumnCount = DecrementValue(2 * ListLen(groupColumnList, "^"))>

<cfset Variables.formName = "companyGroup">
<cfset Variables.formSubmitName = "submitCompanyGroup">
<cfset Variables.formSubmitValue = Variables.lang_companyGroup_title.submitCompanyGroup>
<cfset Form.groupID = ValueList(qry_selectGroupTargetList.groupID)>

<cfif Variables.doAction is "listGroupCompany">
	<cfset Variables.formAction = "">
</cfif>

<cfinclude template="../../include/function/fn_DisplayOrderByNav.cfm">
<cfinclude template="../../view/v_group/form_groupMember.cfm">

