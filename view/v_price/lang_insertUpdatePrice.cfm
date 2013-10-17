<cfset Variables.lang_insertUpdatePrice = StructNew()>

<cfset Variables.lang_insertUpdatePrice.formSubmitValue_insert = "Create Custom Price">
<cfset Variables.lang_insertUpdatePrice.formSubmitValue_update = "Update Custom Price">

<cfset Variables.lang_insertUpdatePrice.priceStatus = "You did not select a valid option for the current status of this price.">
<cfset Variables.lang_insertUpdatePrice.priceName_maxlength = "The price name must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePrice.priceDescription_maxlength = "The price description must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePrice.priceID_custom_maxlength = "The custom price ID must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePrice.priceCode_maxlength = "The price code must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePrice.priceCodeRequired_valid = "You did not select a valid option for whether the code is required.">
<cfset Variables.lang_insertUpdatePrice.priceCodeRequired_blank = "You elected to make the code required, but the code is blank.">
<cfset Variables.lang_insertUpdatePrice.priceAppliesToAllCustomers = "You did not select a valid option for whether the price applies to all customers.">
<cfset Variables.lang_insertUpdatePrice.priceAppliesToAllProducts_valid = "You did not select a valid option for whether the price applies to all products.">
<cfset Variables.lang_insertUpdatePrice.priceAppliesToAllProducts_all = "You selected that this price applies for all products, but this price is for a particular category or product.">
<cfset Variables.lang_insertUpdatePrice.priceAppliesToProductChildren_valid = "You did not select a valid option for whether this price applies to all child products of this product.">
<cfset Variables.lang_insertUpdatePrice.priceAppliesToProductChildren_all = "You selected that the price applies for all child products, but this price is not for a particular product.">
<cfset Variables.lang_insertUpdatePrice.priceAppliesToCategoryChildren_valid = "You did not select a valid option for whether this price applies to all sub-categories of this category.">
<cfset Variables.lang_insertUpdatePrice.priceAppliesToCategoryChildren_all = "You selected that the price applies for all sub-categories, but this price is not for a particular category.">
<cfset Variables.lang_insertUpdatePrice.priceAppliesToInvoice_valid = "You did not select a valid option for whether this price applies to the entire invoice.">
<cfset Variables.lang_insertUpdatePrice.priceAppliesToInvoice_all = "You selected that the price applies to the entire invoice, but this price is for a particular product or category.">
<cfset Variables.lang_insertUpdatePrice.priceBillingMethod_maxlength = "The price billing method must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePrice.priceApproved = "You did not select a valid option for whether this price has been approved.">
<cfset Variables.lang_insertUpdatePrice.priceQuantityMinimumPerOrder_numeric = "You did not enter a valid number for the minimum quantity per order.">
<cfset Variables.lang_insertUpdatePrice.priceQuantityMinimumPerOrder_maxlength = "The minimum quantity per order may have only <<MAXLENGTH>> decimal places.">
<cfset Variables.lang_insertUpdatePrice.priceQuantityMaximumPerCustomer_numeric = "You did not enter a valid number for the maximum quantity per customer.">
<cfset Variables.lang_insertUpdatePrice.priceQuantityMaximumPerCustomer_maxlength = "The maximum quantity per customer may have only <<MAXLENGTH>> decimal places.">
<cfset Variables.lang_insertUpdatePrice.priceQuantityMaximumAllCustomers_numeric = "You did not enter a valid number for the maximum quantity for all customers.">
<cfset Variables.lang_insertUpdatePrice.priceQuantityMaximumAllCustomers_maxlength = "The maximum quantity for all customers may have only <<MAXLENGTH>> decimal places.">
<cfset Variables.lang_insertUpdatePrice.priceQuantityMaximum1 = "The maximum quantity per customer cannot be less than the minimum quantity per order.">
<cfset Variables.lang_insertUpdatePrice.priceQuantityMaximum2 = "The maximum quantity for all customer cannot be less than the minimum quantity per order.">
<cfset Variables.lang_insertUpdatePrice.priceQuantityMaximum3 = "The maximum quantity for all customers cannot be less than the maximum quantity per customer.">
<cfset Variables.lang_insertUpdatePrice.priceDateBegin_now = "You did not select a valid option for whether the price begins now.">
<cfset Variables.lang_insertUpdatePrice.priceDateEnd_now = "You did not select a valid option for whether the price ends now.">
<cfset Variables.lang_insertUpdatePrice.priceDateBeginEnd = "The end date/time must be after the begin date/time.">

<cfset Variables.lang_insertUpdatePrice.priceStageText_maxlength = "For stage ##<<STAGE>>, the line item text must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePrice.priceStageDescription_maxlength = "For stage ##<<STAGE>>, the description code must be <<MAXLENGTH>> characters or less. It currently has <<LEN>> characters.">
<cfset Variables.lang_insertUpdatePrice.priceStageInterval_integer = "For stage ##<<STAGE>>, the interval length must be a positive integer.">
<cfset Variables.lang_insertUpdatePrice.priceStageInterval_lastBlank = "The interval length for the last price stage must be blank. The subscription length is set separately from the price length.">
<cfset Variables.lang_insertUpdatePrice.priceStageIntervalType_valid = "For stage ##<<STAGE>>, you did not select a valid interval type.">
<cfset Variables.lang_insertUpdatePrice.priceStageIntervalType_blank = "For stage ##<<STAGE>>, you must select an interval type unless it is the last (or only) interval.">
<cfset Variables.lang_insertUpdatePrice.priceStageDollarOrPercent = "For stage ##<<STAGE>>, you did not select a valid option for whether the new price is based on dollars or percentage of the normal price.">
<cfset Variables.lang_insertUpdatePrice.priceStageNewOrDeduction = "For stage ##<<STAGE>>, you did not select a valid option for whether the price is the new price or a deduction from the normal price.">
<cfset Variables.lang_insertUpdatePrice.priceStageNewOrDeduction_product = "For stage ##<<STAGE>>, because this price is not for a particular product, you cannot set the new price.<br>You can only set the dollar or percentage deduction.">
<cfset Variables.lang_insertUpdatePrice.priceStageVolumeDiscount = "For stage ##<<STAGE>>, you did not select a valid option for whether the new price is based on quantity ordered.">
<cfset Variables.lang_insertUpdatePrice.priceStageVolumeDollarOrQuantity = "For stage ##<<STAGE>>, you did not select a valid option for whether the volume pricing is bsaed on dollar amount or quantity ordered.">
<cfset Variables.lang_insertUpdatePrice.priceStageVolumeStep = "For stage ##<<STAGE>>, you did not select a valid option for whether the volume pricing is applied in steps.">
<cfset Variables.lang_insertUpdatePrice.priceStageAmount_numeric = "For stage ##<<STAGE>>, you did not enter a valid amount for the new price.">
<cfset Variables.lang_insertUpdatePrice.priceStageAmount_maxlength = "For stage ##<<STAGE>>, the new price may have only <<MAXLENGTH>> decimal places.">
<cfset Variables.lang_insertUpdatePrice.priceVolumeDiscountCount = "The number of volume discount settings must be at least 2.">
<cfset Variables.lang_insertUpdatePrice.priceVolumeDiscountQuantityMinimum_single = "For stage ##<<STAGE>>, if you are only using a single volume setting, do not use the volume pricing option.">
<cfset Variables.lang_insertUpdatePrice.priceVolumeDiscountQuantityMinimum_quantity = "For stage ##<<STAGE>>, you did not enter a valid quantity for volume discount option ##<<COUNT>>.">
<cfset Variables.lang_insertUpdatePrice.priceVolumeDiscountQuantityMinimum_maxlength = "For stage ##<<STAGE>>, the volume discount quantity may have only <<MAXLENGTH>> decimal places.">
<cfset Variables.lang_insertUpdatePrice.priceVolumeDiscountQuantityMinimum_increase = "For stage ##<<STAGE>>, the volume discount quantity for option ##<<COUNT>> must be greater than the quantity for ##<<COUNTMINUS1>>.">
<cfset Variables.lang_insertUpdatePrice.priceVolumeDiscountAmount_numeric = "For stage ##<<STAGE>>, you did not enter a valid price for volume discount option ##<<COUNT>>.">
<cfset Variables.lang_insertUpdatePrice.priceVolumeDiscountAmount_maxlength = "For stage ##<<STAGE>>, the volume discount price may have only <<MAXLENGTH>> decimal places.">
<cfset Variables.lang_insertUpdatePrice.priceVolumeDiscountCount_real = "For stage ##<<STAGE>>, if you are only using a single volume setting, do not use the volume pricing option.">
<cfset Variables.lang_insertUpdatePrice.priceVolumeDiscountIsTotalPrice_valid = "For stage ##<<STAGE>>, you did not select a valid option for whether the amount is total price for all quantity for option ##<<COUNT>>.">
<cfset Variables.lang_insertUpdatePrice.priceVolumeDiscountIsTotalPrice_price = "For stage ##<<STAGE>>, to use the total amount option, the price must be stated as a straight dollar amount (the last option).">
<cfset Variables.lang_insertUpdatePrice.priceVolumeDiscountIsTotalPrice_step = "For stage ##<<STAGE>>, to use the total amount option, you must be using step pricing.">

<cfset Variables.lang_insertUpdatePrice.errorTitle_insert = "The price could not be created for the following reason(s):">
<cfset Variables.lang_insertUpdatePrice.errorTitle_update = "The price could not be updated for the following reason(s):">
<cfset Variables.lang_insertUpdatePrice.errorHeader = "">
<cfset Variables.lang_insertUpdatePrice.errorFooter = "">
