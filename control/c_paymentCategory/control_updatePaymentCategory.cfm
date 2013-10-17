<cfinvoke Component="#Application.billingMapping#data.PaymentCategory" Method="selectPaymentCategoryList" ReturnVariable="qry_selectPaymentCategoryList">
	<cfinvokeargument Name="companyID" Value="#Session.companyID#">
	<cfinvokeargument Name="paymentCategoryType" Value="#URL.paymentCategoryType#">
</cfinvoke>

<cfinclude template="../../view/v_payment/var_paymentMethodList.cfm">
<cfinvoke component="#Application.billingMapping#data.PaymentCategory" method="maxlength_PaymentCategory" returnVariable="maxlength_PaymentCategory" />
<cfinclude template="formParam_insertUpdatePaymentCategory.cfm">
<cfinclude template="../../view/v_paymentCategory/lang_insertUpdatePaymentCategory.cfm">

<cfif IsDefined("Form.isFormSubmitted") and IsDefined("Form.submitPaymentCategory")>
	<cfinclude template="formValidate_insertUpdatePaymentCategory.cfm">

	<cfif isAllFormFieldsOk is False>
		<cfinclude template="../../view/error_formValidation.cfm">
	<cfelse>
		<cfinvoke Component="#Application.billingMapping#data.PaymentCategory" Method="updatePaymentCategory" ReturnVariable="isPaymentCategoryUpdated">
			<cfinvokeargument Name="paymentCategoryID" Value="#URL.paymentCategoryID#">
			<cfinvokeargument Name="userID" Value="#Session.userID#">
			<cfinvokeargument Name="paymentCategoryName" Value="#Form.paymentCategoryName#">
			<cfinvokeargument Name="paymentCategoryTitle" Value="#Form.paymentCategoryTitle#">
			<cfinvokeargument Name="paymentCategoryID_custom" Value="#Form.paymentCategoryID_custom#">
			<cfinvokeargument Name="paymentCategoryStatus" Value="#Form.paymentCategoryStatus#">
			<cfinvokeargument Name="paymentCategoryAutoMethod" Value="#Form.paymentCategoryAutoMethod#">
		</cfinvoke>

		<cflocation url="index.cfm?method=paymentCategory.#Variables.doAction#&paymentCategoryType=#URL.paymentCategoryType#&paymentCategoryID=#URL.paymentCategoryID#&confirm_paymentCategory=#Variables.doAction#" AddToken="No">
	</cfif>
</cfif>

<cfset Variables.formName = "paymentCategory">
<cfset Variables.formAction = "index.cfm?method=paymentCategory.#Variables.doAction#&paymentCategoryType=#URL.paymentCategoryType#&paymentCategoryID=#URL.paymentCategoryID#">
<cfset Variables.formSubmitValue = Variables.lang_insertUpdatePaymentCategory.formSubmitValue_insert>

<cfinclude template="../../view/v_paymentCategory/form_insertUpdatePaymentCategory.cfm">
