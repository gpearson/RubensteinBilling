<cfset Variables.lang_insertUpdatePayflow = StructNew()>

<cfset Variables.lang_insertUpdatePayflow.formSubmitValue_insert = "Create Subscription Processing Method">
<cfset Variables.lang_insertUpdatePayflow.formSubmitValue_update = "Update Subscription Processing Method">

<cfset Variables.lang_insertUpdatePayflow.payflowOrder = "You did not select a valid order.">
<cfset Variables.lang_insertUpdatePayflow.payflowStatus = "You did not select a valid status.">
<cfset Variables.lang_insertUpdatePayflow.payflowInvoiceSend = "You did not select a valid option for whether to send an invoice.">
<cfset Variables.lang_insertUpdatePayflow.payflowReceiptSend = "You did not select a valid option for whether to send a receipt.">
<cfset Variables.lang_insertUpdatePayflow.payflowRejectNotifyCustomer = "You did not select a valid option for whether to notify the customer if the payment is rejected.">
<cfset Variables.lang_insertUpdatePayflow.payflowRejectNotifyAdmin = "You did not select a valid option for whether to notify the admin user(s) if the payment is rejected.">
<cfset Variables.lang_insertUpdatePayflow.payflowRejectTask = "You did not select a valid option for whether to create a task for the admin user(s) if the payment is rejected.">
<cfset Variables.lang_insertUpdatePayflow.payflowDefault_valid = "You did not select a valid option for whether this is the default subscription processing method.">
<cfset Variables.lang_insertUpdatePayflow.payflowDefault_status = "The default subscription processing method cannot have an inactive status.">
<cfset Variables.lang_insertUpdatePayflow.payflowDefault_required = "This subscription processing method must be the default because no other subscription processing methods exist.">
<cfset Variables.lang_insertUpdatePayflow.payflowDefault_change = "To change the default subscription processing method, edit the method that should be the new default.<br>By making a different method the default, this method will automatically be updated to no longer be the default.">
<cfset Variables.lang_insertUpdatePayflow.payflowName_blank = "The subscription processing method name cannot be blank.">
<cfset Variables.lang_insertUpdatePayflow.payflowName_maxlength = "The subscription processing method name must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePayflow.payflowName_unique = "The subscription processing method name is already being used. Please select a different name.">
<cfset Variables.lang_insertUpdatePayflow.payflowID_custom_maxlength = "The subscription processing method custom ID must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePayflow.payflowID_custom_unique = "The subscription processing method custom ID is already being used. Please select a different custom ID.">
<cfset Variables.lang_insertUpdatePayflow.payflowDescription_maxlength = "The subscription processing method description must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePayflow.payflowInvoiceDaysFromSubscriberDate_valid = "The number of days after the subscriber is processed to send the invoice must be blank or a number between 0-255.">
<cfset Variables.lang_insertUpdatePayflow.payflowChargeDaysFromSubscriberDate_valid = "The number of days after the subscriber is processed to charge the customer must be blank or a number between 0-255.">
<cfset Variables.lang_insertUpdatePayflow.payflowChargeDaysFromSubscriberDate_invoice = "The customer cannot be charged before the invoice is sent.">
<cfset Variables.lang_insertUpdatePayflow.payflowRejectRescheduleDays_valid = "The number of days to re-schedule a rejected payment must be blank or a number between 0-255.">
<cfset Variables.lang_insertUpdatePayflow.payflowRejectMaximum_company_valid = "The maximum number of rejections per customer must be blank or a number between 0-255.">
<cfset Variables.lang_insertUpdatePayflow.payflowRejectMaximum_subscriber_valid = "The maximum number of rejections per subscriber must be blank or a number between 0-255.">
<cfset Variables.lang_insertUpdatePayflow.payflowRejectMaximum_subscriber_company = "The maximum number of rejections per subscriber cannot be greater than the maximum per customer.">
<cfset Variables.lang_insertUpdatePayflow.payflowRejectMaximum_invoice_valid = "The maximum number of rejections per invoice must be blank or a number between 0-255.">
<cfset Variables.lang_insertUpdatePayflow.payflowRejectMaximum_invoice_company = "The maximum number of rejections per invoice cannot be greater than the maximum per customer.">
<cfset Variables.lang_insertUpdatePayflow.payflowRejectMaximum_invoice_subscriber = "The maximum number of rejections per invoice cannot be greater than the maximum per subscriber.">
<cfset Variables.lang_insertUpdatePayflow.templateID = "You did not select a valid invoice template.">
<cfset Variables.lang_insertUpdatePayflow.payflowEmailFromName_blank = "The email from name cannot be blank.">
<cfset Variables.lang_insertUpdatePayflow.payflowEmailFromName_maxlength = "The email from name must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePayflow.payflowEmailSubject_maxlength = "The email subject must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePayflow.payflowEmailReplyTo_blank = "The reply-to email address is required.">
<cfset Variables.lang_insertUpdatePayflow.payflowEmailReplyTo_maxlength = "The email reply-to address must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePayflow.payflowEmailReplyTo_valid = "The reply-to email address is not valid.">
<cfset Variables.lang_insertUpdatePayflow.payflowEmailCC_maxlength = "The email CC address(es) must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePayflow.payflowEmailCC_valid = "At least one CC'd email address is not valid.">
<cfset Variables.lang_insertUpdatePayflow.payflowEmailBCC_maxlength = "The email BCC address(es) must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePayflow.payflowEmailBCC_valid = "At least one BCC'd email address is not valid.">

<cfset Variables.lang_insertUpdatePayflow.errorTitle_insert = "The subscription processing method could not be added for the following reason(s):">
<cfset Variables.lang_insertUpdatePayflow.errorTitle_update = "The subscription processing method could not be updated for the following reason(s):">
<cfset Variables.lang_insertUpdatePayflow.errorHeader = "">
<cfset Variables.lang_insertUpdatePayflow.errorFooter = "">

