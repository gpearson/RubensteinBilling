<cfset primaryTargetID_cobrand = Application.fn_GetPrimaryTargetID("cobrandID")>

<cfinvoke Component="#Application.billingMapping#data.PriceTarget" Method="selectPriceTarget" ReturnVariable="qry_selectPriceTarget">
	<cfinvokeargument Name="priceID" Value="#URL.priceID#">
	<cfinvokeargument Name="priceTargetWithTargetInfo" Value="False">
	<cfinvokeargument Name="primaryTargetID" Value="#primaryTargetID_cobrand#">
</cfinvoke>

<cfif IsDefined("Form.isFormSubmitted") and IsDefined("Form.submitPriceTarget") and IsDefined("Form.cobrandID")>
	<cfloop Index="loopTargetID" List="#Form.cobrandID#">
		<cfif Not ListFind(ValueList(qry_selectPriceTarget.targetID), loopTargetID)>
			<cfinvoke Component="#Application.billingMapping#data.PriceTarget" Method="insertPriceTarget" ReturnVariable="isPriceTargetInserted">
				<cfinvokeargument Name="priceID" Value="#URL.priceID#">
				<cfinvokeargument Name="primaryTargetID" Value="#primaryTargetID_cobrand#">
				<cfinvokeargument Name="targetID" Value="#loopTargetID#">
				<cfinvokeargument Name="userID" Value="#Session.userID#">
				<cfinvokeargument Name="priceTargetStatus" Value="1">
				<cfinvokeargument Name="priceTargetOrder" Value="0">
			</cfinvoke>
		</cfif>
	</cfloop>

	<cflocation url="index.cfm?method=#URL.method#&priceID=#URL.priceID##Variables.urlParameters#&confirm_price=#Variables.doAction#" AddToken="No">
</cfif>

<cfset URL.priceID_not = URL.priceID>
<cfset URL.priceID = "">
<cfset Variables.doAction = "listCobrands">
<cfset Variables.doControl = "cobrand">
<cfinclude template="../control.cfm">

