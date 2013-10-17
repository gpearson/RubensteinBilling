<cfset Variables.lang_listProducts = StructNew()>
<cfset Variables.lang_listProducts_title = StructNew()>

<!--- insertProductRecommend --->
<cfset Variables.lang_listProducts_title.productID = "ID">
<cfset Variables.lang_listProducts_title.productName = "Product Name">
<cfset Variables.lang_listProducts_title.productPrice = "Price">
<cfset Variables.lang_listProducts_title.productListedOnSite = "Status">
<cfset Variables.lang_listProducts_title.productDateCreated = "Created">
<cfset Variables.lang_listProducts_title.productRecommends = "Recommends<br>Listed Product">
<cfset Variables.lang_listProducts_title.productIsRecommended = "Recommended<br><i>By</i> Listed Product">
<cfset Variables.lang_listProducts_title.insertProductBundle = "Add ## To<br>Bundle">
<cfset Variables.lang_listProducts_title.insertInvoiceLineItem = "Add to<br>Invoice">
<cfset Variables.lang_listProducts_title.formSubmitValue_insertInvoiceLineItem = "Select">
<cfset Variables.lang_listProducts_title.formSubmitValue_insertSubscription = "Select">
<cfset Variables.lang_listProducts_title.insertSubscription = "Add<br>Subscription">
<cfset Variables.lang_listProducts_title.formSubmitValue_insertCommissionProduct = "Select">
<cfset Variables.lang_listProducts_title.insertCommissionProduct = "Add As<br>Target">
<cfset Variables.lang_listProducts_title.formSubmitValueChildren = "Plus Children">
<cfset Variables.lang_listProducts_title.listCommissionProducts = "Remove As<br>Target">
<cfset Variables.lang_listProducts_title.formSubmitValue_listCommissionProducts = "Remove">
<cfset Variables.lang_listProducts_title.productViewCount = "Views">
<cfset Variables.lang_listProducts_title.productCategoryOrder = "##">
<cfset Variables.lang_listProducts_title.switchProductCategoryOrder = "Switch<br>Order">
<cfset Variables.lang_listProducts_title.viewProduct = "Manage">

<cfset Variables.lang_listProducts.categoryID = "You did not select a valid product category.">
<cfset Variables.lang_listProducts.productStatus = "You did not select a valid option for whether to search sub-categories.">
<cfset Variables.lang_listProducts.categoryID_multiple = "You did not select a valid option for whether to search for products listed in multiple categories.">
<cfset Variables.lang_listProducts.vendorID = "You did not select a valid product vendor.">
<cfset Variables.lang_listProducts.userID_manager = "You did not select a valid product manager.">
<cfset Variables.lang_listProducts.searchField = "You did not select any product fields to search for the given text.">
<cfset Variables.lang_listProducts.productStatus = "You did not select a valid option for whether the product is active.">
<cfset Variables.lang_listProducts.productListedOnSite = "You did not select a valid option for whether the product is listed on the site.">
<cfset Variables.lang_listProducts.productCanBePurchased = "You did not select a valid option for whether the product can be purchased.">
<cfset Variables.lang_listProducts.productDisplayChildren = "You did not select a valid option for whether the product displays child products on the same product page.">
<cfset Variables.lang_listProducts.productHasImage = "You did not select a valid option for whether the product has images.">
<cfset Variables.lang_listProducts.productIsBundle = "You did not select a valid option for whether the product is a bundle.">
<cfset Variables.lang_listProducts.productInBundle = "You did not select a valid option for whether the product is in a bundle.">
<cfset Variables.lang_listProducts.productIsRecommended = "You did not select a valid option for whether the product has been recommended by other products.">
<cfset Variables.lang_listProducts.productHasRecommendation = "You did not select a valid option for whether the product recommends other products.">
<cfset Variables.lang_listProducts.productHasCustomPrice = "You did not select a valid option for whether any custom prices exist for this product.">
<cfset Variables.lang_listProducts.productIsDateRestricted = "You did not select a valid option for whether there are any date restrictions on this product.">
<cfset Variables.lang_listProducts.productHasChildren = "You did not select a valid option for whether the product has any child products.">
<cfset Variables.lang_listProducts.productID_parent = "You did not select a valid option for whether the product is a child product.">
<cfset Variables.lang_listProducts.productPrice_min = "You did not enter a valid minimum price.">
<cfset Variables.lang_listProducts.productPrice_max = "You did not enter a valid maximum price.">
<cfset Variables.lang_listProducts.productPrice_minMax = "The maximum price was not greater than the minimum price.">
<cfset Variables.lang_listProducts.productCatalogPageNumber = "You did not enter a valid option for the catalog page number.<br>You may enter 0 for not listed, an individual page number,<br>a range of page numbers (5-7) or a comma-separated list of page numbers (2,5,9).">
<cfset Variables.lang_listProducts.productWeight_min = "You did not enter a valid minimum weight.">
<cfset Variables.lang_listProducts.productWeight_max = "You did not enter a valid maximum weight.">
<cfset Variables.lang_listProducts.queryDisplayPerPage = "You did not enter a valid number of products to display per page.">
<cfset Variables.lang_listProducts.queryPage = "You did not enter a valid page number.">
<cfset Variables.lang_listProducts.queryFirstLetter = "You did not enter a valid first letter to jump to.">
<cfset Variables.lang_listProducts.productPriceCallForQuote = "You did not select a valid option for whether customers should call for a price quote on the product.">
<cfset Variables.lang_listProducts.productWeight = "You did not select a valid option for whether the product has a weight value.">
<cfset Variables.lang_listProducts.productHasSpec = "You did not select a valid option for whether the product has any specs.">
<cfset Variables.lang_listProducts.productInWarehouse = "You did not select a valid option for whether the product is in stock.">
<cfset Variables.lang_listProducts.productHasParameter = "You did not select a valid option for whether the product has any parameters.">
<cfset Variables.lang_listProducts.productHasParameterException = "You did not select a valid option for whether the product has any parameter exceptions.">
<cfset Variables.lang_listProducts.statusID = "You did not select a valid custom status.">
<cfset Variables.lang_listProducts.productIsExported = "You did not select a valid export status.">

<cfset Variables.lang_listProducts.errorTitle = "The product list could not be retrieved for the following reason(s):">
<cfset Variables.lang_listProducts.errorHeader = "">
<cfset Variables.lang_listProducts.errorFooter = "">

