<cfset Variables.lang_listUsers = StructNew()>
<cfset Variables.lang_listUsers_title = StructNew()>

<cfset Variables.lang_listUsers_title.companyID_custom = "Custom<br>Com. ID">
<cfset Variables.lang_listUsers_title.companyName = "Company">
<cfset Variables.lang_listUsers_title.lastName = "Name (Last,First)">
<cfset Variables.lang_listUsers_title.userID_custom = "Custom<br>User ID">
<cfset Variables.lang_listUsers_title.username = "Username">
<cfset Variables.lang_listUsers_title.userDateCreated = "Date<br>Created">
<cfset Variables.lang_listUsers_title.viewUser = "Manage">
<cfset Variables.lang_listUsers_title.listGroupUser = "DROP FROM<br>GROUP">
<cfset Variables.lang_listUsers_title.insertGroupUser = "ADD TO<br>GROUP">
<cfset Variables.lang_listUsers_title.formSubmitValue_listGroupUser = "Remove Users From Group">
<cfset Variables.lang_listUsers_title.formSubmitValue_insertGroupUser = "Add Users To Group">
<cfset Variables.lang_listUsers_title.priceTarget = "PRICE<br>TARGET?">
<cfset Variables.lang_listUsers_title.formSubmitValue_priceTarget = "Add Users As Price Targets">
<cfset Variables.lang_listUsers_title.insertSubscriberNotify = "NOTIFY<br>USER">
<cfset Variables.lang_listUsers_title.formSubmitValue_insertSubscriberNotify = "Notify Users">
<cfset Variables.lang_listUsers_title.insertPayflowNotify = "NOTIFY<br>USER">
<cfset Variables.lang_listUsers_title.formSubmitValue_insertPayflowNotify = "Notify Users">
<cfset Variables.lang_listUsers_title.insertCommissionTargetUser = "COMMISSION<br>TARGET?">
<cfset Variables.lang_listUsers_title.formSubmitValue_insertCommissionTargetUser = "Add Users As Commission Targets">

<cfset Variables.lang_listUsers.searchField = "You did not select any user or company fields to search for the given text.">
<cfset Variables.lang_listUsers.groupID = "You did not select a valid group.">
<cfset Variables.lang_listUsers.affiliateID = "You did not select a valid affiliate.">
<cfset Variables.lang_listUsers.cobrandID = "You did not select a valid cobrand.">
<cfset Variables.lang_listUsers.statusID = "You did not select a valid custom status.">
<cfset Variables.lang_listUsers.userStatus = "You did not select a valid option for whether the user is active.">
<cfset Variables.lang_listUsers.companyIsCustomer = "You did not select a valid option for whether the user is a customer.">
<cfset Variables.lang_listUsers.userHasCustomPricing = "You did not select a valid option for whether the user has any custom pricing.">
<cfset Variables.lang_listUsers.companyIsAffiliate = "You did not select a valid option for whether the user is with an affiliate company.">
<cfset Variables.lang_listUsers.companyIsCobrand = "You did not select a valid option for whether the user is with a cobrand company.">
<cfset Variables.lang_listUsers.companyIsVendor = "You did not select a valid option for whether the user is with a vendor company.">
<cfset Variables.lang_listUsers.companyIsTaxExempt = "You did not select a valid option for whether the user is with tax-exempt company.">
<cfset Variables.lang_listUsers.userIsPrimaryContact = "You did not select a valid option for whether the user is the primary contact for their company.">
<cfset Variables.lang_listUsers.userHasCustomID = "You did not select a valid option for whether the user has a custom ID.">
<cfset Variables.lang_listUsers.userIsActiveSubscriber = "You did not select a valid option for whether the user has any subscriptions.">
<cfset Variables.lang_listUsers.userNewsletterStatus = "You did not select a valid option for whether the user is subscribed to the newsletter.">
<cfset Variables.lang_listUsers.userNewsletterHtml = "You did not select a valid option for whether the user prefers to receive the newsletter in text or html format.">
<cfset Variables.lang_listUsers.queryDisplayPerPage = "You did not enter a valid number of users to display per page.">
<cfset Variables.lang_listUsers.queryPage = "You did not enter a valid page number.">
<cfset Variables.lang_listUsers.userIsExported = "You did not select a valid export status.">

<cfset Variables.lang_listUsers.errorTitle = "The users could not be listed for the following reason(s):">
<cfset Variables.lang_listUsers.errorHeader = "">
<cfset Variables.lang_listUsers.errorFooter = "">
