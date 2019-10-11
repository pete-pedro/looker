view: shipping {
  sql_table_name: desktopshipper.shipping ;;

  dimension: address_change_user {
    type: string
    sql: ${TABLE}.addressChangeUser ;;
  }

  dimension: assigned_batch_id {
    type: number
    sql: ${TABLE}.assignedBatchId ;;
  }

  dimension: avs_override {
    type: yesno
    sql: ${TABLE}.avsOverride ;;
  }

  dimension: avs_result_applied {
    type: yesno
    sql: ${TABLE}.avsResultApplied ;;
  }

  dimension: avs_result_ok {
    type: yesno
    sql: ${TABLE}.avsResultOk ;;
  }

  dimension: avs_result_rec_id {
    type: number
    sql: ${TABLE}.avsResultRecId ;;
  }

  dimension: batch_import_grouping_key {
    type: string
    sql: ${TABLE}.batchImportGroupingKey ;;
  }

  dimension: batch_processing_error {
    type: string
    sql: ${TABLE}.batchProcessingError ;;
  }

  dimension: batch_processing_status {
    type: string
    sql: ${TABLE}.batchProcessingStatus ;;
  }

  dimension: bill_addr1 {
    type: string
    sql: ${TABLE}.billAddr1 ;;
  }

  dimension: bill_addr2 {
    type: string
    sql: ${TABLE}.billAddr2 ;;
  }

  dimension: bill_addr3 {
    type: string
    sql: ${TABLE}.billAddr3 ;;
  }

  dimension: bill_city {
    type: string
    sql: ${TABLE}.billCity ;;
  }

  dimension: bill_company {
    type: string
    sql: ${TABLE}.billCompany ;;
  }

  dimension: bill_country {
    type: string
    sql: ${TABLE}.billCountry ;;
  }

  dimension: bill_name {
    type: string
    sql: ${TABLE}.billName ;;
  }

  dimension: bill_phone {
    type: string
    sql: ${TABLE}.billPhone ;;
  }

  dimension: bill_post_code {
    type: string
    sql: ${TABLE}.billPostCode ;;
  }

  dimension: bill_state_or_prov {
    type: string
    sql: ${TABLE}.billStateOrProv ;;
  }

  dimension: block_integration_internal_status_updates {
    type: yesno
    sql: ${TABLE}.blockIntegrationInternalStatusUpdates ;;
  }

  dimension: block_integration_notes_update {
    type: yesno
    sql: ${TABLE}.blockIntegrationNotesUpdate ;;
  }

  dimension: block_integration_ship_update {
    type: yesno
    sql: ${TABLE}.blockIntegrationShipUpdate ;;
  }

  dimension: block_integration_updates {
    type: yesno
    sql: ${TABLE}.blockIntegrationUpdates ;;
  }

  dimension: buyer_email {
    type: string
    sql: ${TABLE}.buyerEmail ;;
  }

  dimension: carton_cost {
    type: number
    sql: ${TABLE}.cartonCost ;;
  }

  dimension: carton_weight {
    type: number
    sql: ${TABLE}.cartonWeight ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.clientId ;;
  }

  dimension: client_unique_sequence {
    type: number
    sql: ${TABLE}.clientUniqueSequence ;;
  }

  dimension: cmlink_id {
    type: number
    sql: ${TABLE}.cmlinkId ;;
  }

  dimension: csv_client_import_id {
    type: string
    sql: ${TABLE}.csvClientImportId ;;
  }

  dimension: desc_sort_master_flag {
    type: yesno
    sql: ${TABLE}.descSortMasterFlag ;;
  }

  dimension: estimated_ship_date {
    type: string
    sql: ${TABLE}.estimatedShipDate ;;
  }

  dimension: flag_for_dropship {
    type: string
    sql: ${TABLE}.flagForDropship ;;
  }

  dimension: freight_bill_account {
    type: string
    sql: ${TABLE}.FreightBillAccount ;;
  }

  dimension: freight_bill_type {
    type: number
    sql: ${TABLE}.FreightBillType ;;
  }

  dimension: from_addr1 {
    type: string
    sql: ${TABLE}.fromAddr1 ;;
  }

  dimension: from_addr2 {
    type: string
    sql: ${TABLE}.fromAddr2 ;;
  }

  dimension: from_addr3 {
    type: string
    sql: ${TABLE}.fromAddr3 ;;
  }

  dimension: from_city {
    type: string
    sql: ${TABLE}.fromCity ;;
  }

  dimension: from_company {
    type: string
    sql: ${TABLE}.fromCompany ;;
  }

  dimension: from_country {
    type: string
    sql: ${TABLE}.fromCountry ;;
  }

  dimension: from_email {
    type: string
    sql: ${TABLE}.fromEmail ;;
  }

  dimension: from_name {
    type: string
    sql: ${TABLE}.fromName ;;
  }

  dimension: from_phone {
    type: string
    sql: ${TABLE}.fromPhone ;;
  }

  dimension: from_post_code {
    type: string
    sql: ${TABLE}.fromPostCode ;;
  }

  dimension: from_state_or_prov {
    type: string
    sql: ${TABLE}.fromStateOrProv ;;
  }

  dimension: gift_message {
    type: string
    sql: ${TABLE}.giftMessage ;;
  }

  dimension: gift_notes {
    type: string
    sql: ${TABLE}.giftNotes ;;
  }

  dimension: gift_price {
    type: string
    sql: ${TABLE}.giftPrice ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: internal_id {
    type: number
    sql: ${TABLE}.internalId ;;
  }

  dimension: internal_status {
    type: string
    sql: ${TABLE}.internalStatus ;;
  }

  dimension: internal_status_124 {
    type: string
    sql: ${TABLE}.internalStatus_124 ;;
  }

  dimension: is_amazon_prime {
    type: yesno
    sql: ${TABLE}.isAmazonPrime ;;
  }

  dimension: is_cloud_owned_shipment {
    type: yesno
    sql: ${TABLE}.isCloudOwnedShipment ;;
  }

  dimension: is_manual_shipment {
    type: yesno
    sql: ${TABLE}.isManualShipment ;;
  }

  dimension: is_test_mode_shipment {
    type: yesno
    sql: ${TABLE}.isTestModeShipment ;;
  }

  dimension: ise_bay_guaranteed {
    type: yesno
    sql: ${TABLE}.iseBayGuaranteed ;;
  }

  dimension: item_custom_value1 {
    type: string
    sql: ${TABLE}.itemCustomValue1 ;;
  }

  dimension: item_custom_value2 {
    type: string
    sql: ${TABLE}.itemCustomValue2 ;;
  }

  dimension: item_custom_value3 {
    type: string
    sql: ${TABLE}.itemCustomValue3 ;;
  }

  dimension: label_is_printed {
    type: yesno
    sql: ${TABLE}.labelIsPrinted ;;
  }

  dimension: label_printed_date {
    type: string
    sql: ${TABLE}.labelPrintedDate ;;
  }

  dimension: last_updated_date {
    type: string
    sql: ${TABLE}.lastUpdatedDate ;;
  }

  dimension: length {
    type: string
    sql: ${TABLE}.length ;;
  }

  dimension: line_item_type {
    type: string
    sql: ${TABLE}.lineItemType ;;
  }

  dimension: location_sort_master_flag {
    type: yesno
    sql: ${TABLE}.locationSortMasterFlag ;;
  }

  dimension: market_additional_reference {
    type: string
    sql: ${TABLE}.marketAdditionalReference ;;
  }

  dimension: market_fulfillment_id {
    type: number
    sql: ${TABLE}.marketFulfillmentId ;;
  }

  dimension: market_id {
    type: number
    sql: ${TABLE}.marketId ;;
  }

  dimension: market_internal_id {
    type: string
    sql: ${TABLE}.marketInternalId ;;
  }

  dimension: market_item_id {
    type: number
    sql: ${TABLE}.marketItemId ;;
  }

  dimension: market_listing_key {
    type: string
    sql: ${TABLE}.marketListingKey ;;
  }

  dimension: market_order_id {
    type: number
    sql: ${TABLE}.marketOrderId ;;
  }

  dimension: market_order_item_key {
    type: number
    sql: ${TABLE}.marketOrderItemKey ;;
  }

  dimension: market_order_number {
    type: string
    sql: ${TABLE}.marketOrderNumber ;;
  }

  dimension: market_primary_key {
    type: string
    sql: ${TABLE}.marketPrimaryKey ;;
  }

  dimension: market_product_key {
    type: string
    sql: ${TABLE}.marketProductKey ;;
  }

  dimension: market_secondary_key {
    type: string
    sql: ${TABLE}.marketSecondaryKey ;;
  }

  dimension: market_sku {
    type: string
    sql: ${TABLE}.marketSku ;;
  }

  dimension: market_title {
    type: string
    sql: ${TABLE}.marketTitle ;;
  }

  dimension: marketplace_checkout_status {
    type: string
    sql: ${TABLE}.marketplaceCheckoutStatus ;;
  }

  dimension: marketplace_needs_update_flag {
    type: yesno
    sql: ${TABLE}.marketplaceNeedsUpdateFlag ;;
  }

  dimension: marketplace_order_status {
    type: string
    sql: ${TABLE}.marketplaceOrderStatus ;;
  }

  dimension: marketplace_payment_status {
    type: string
    sql: ${TABLE}.marketplacePaymentStatus ;;
  }

  dimension: marketplace_writeback_complete {
    type: yesno
    sql: ${TABLE}.marketplaceWritebackComplete ;;
  }

  dimension: marketplace_writeback_date {
    type: string
    sql: ${TABLE}.marketplaceWritebackDate ;;
  }

  dimension: markup_cost {
    type: string
    sql: ${TABLE}.markupCost ;;
  }

  dimension: negotiated_cost {
    type: number
    sql: ${TABLE}.negotiatedCost ;;
  }

  dimension: omcreate_date {
    type: string
    sql: ${TABLE}.OMCreateDate ;;
  }

  dimension: order_currency_code {
    type: string
    sql: ${TABLE}.orderCurrencyCode ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}.orderDate ;;
  }

  dimension: order_guid {
    type: string
    sql: ${TABLE}.orderGuid ;;
  }

  dimension: order_insurance_amount {
    type: string
    sql: ${TABLE}.orderInsuranceAmount ;;
  }

  dimension: order_item_id {
    type: number
    sql: ${TABLE}.orderItemId ;;
  }

  dimension: order_item_key {
    type: number
    sql: ${TABLE}.orderItemKey ;;
  }

  dimension: order_private_notes {
    type: string
    sql: ${TABLE}.orderPrivateNotes ;;
  }

  dimension: order_promo_amount {
    type: number
    sql: ${TABLE}.orderPromoAmount ;;
  }

  dimension: order_promo_code {
    type: string
    sql: ${TABLE}.orderPromoCode ;;
  }

  dimension: order_public_notes {
    type: string
    sql: ${TABLE}.orderPublicNotes ;;
  }

  dimension: order_root_id {
    type: number
    sql: ${TABLE}.orderRootId ;;
  }

  dimension: order_root_id_141 {
    type: number
    sql: ${TABLE}.orderRootId_141 ;;
  }

  dimension: order_shipping_amount {
    type: number
    sql: ${TABLE}.orderShippingAmount ;;
  }

  dimension: order_shipping_tax_amount {
    type: string
    sql: ${TABLE}.orderShippingTaxAmount ;;
  }

  dimension: order_special_instructions {
    type: string
    sql: ${TABLE}.orderSpecialInstructions ;;
  }

  dimension: order_tax_amount {
    type: number
    sql: ${TABLE}.orderTaxAmount ;;
  }

  dimension: order_total_amount {
    type: number
    sql: ${TABLE}.orderTotalAmount ;;
  }

  dimension: order_total_weight {
    type: number
    sql: ${TABLE}.orderTotalWeight ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.orderType ;;
  }

  dimension: ordered_qty {
    type: number
    sql: ${TABLE}.orderedQty ;;
  }

  dimension: package_id {
    type: string
    sql: ${TABLE}.packageId ;;
  }

  dimension: packed_qty {
    type: number
    sql: ${TABLE}.packedQty ;;
  }

  dimension: parent_item_rec_id {
    type: string
    sql: ${TABLE}.parentItemRecId ;;
  }

  dimension: pay_detail1 {
    type: string
    sql: ${TABLE}.payDetail1 ;;
  }

  dimension: pay_detail2 {
    type: string
    sql: ${TABLE}.payDetail2 ;;
  }

  dimension: pay_method {
    type: string
    sql: ${TABLE}.payMethod ;;
  }

  dimension: picked_qty {
    type: number
    sql: ${TABLE}.pickedQty ;;
  }

  dimension: printed_date {
    type: string
    sql: ${TABLE}.printedDate ;;
  }

  dimension: profile_id {
    type: number
    sql: ${TABLE}.profileId ;;
  }

  dimension: published_cost {
    type: string
    sql: ${TABLE}.publishedCost ;;
  }

  dimension: qty_to_dropship {
    type: string
    sql: ${TABLE}.qtyToDropship ;;
  }

  dimension: rec_id {
    type: number
    sql: ${TABLE}.recId ;;
  }

  dimension: rec_id_140 {
    type: number
    sql: ${TABLE}.recId_140 ;;
  }

  dimension: requested_carrier {
    type: string
    sql: ${TABLE}.requestedCarrier ;;
  }

  dimension: requested_class {
    type: string
    sql: ${TABLE}.requestedClass ;;
  }

  dimension: requested_deliver_by_date {
    type: string
    sql: ${TABLE}.requestedDeliverByDate ;;
  }

  dimension: requested_return_service {
    type: string
    sql: ${TABLE}.requestedReturnService ;;
  }

  dimension: requested_ship_method {
    type: string
    sql: ${TABLE}.requestedShipMethod ;;
  }

  dimension: save_date {
    type: string
    sql: ${TABLE}.saveDate ;;
  }

  dimension: secondary_order_number {
    type: string
    sql: ${TABLE}.secondaryOrderNumber ;;
  }

  dimension: seller_order_number {
    type: string
    sql: ${TABLE}.sellerOrderNumber ;;
  }

  dimension: ship_addr1 {
    type: string
    sql: ${TABLE}.shipAddr1 ;;
  }

  dimension: ship_addr2 {
    type: string
    sql: ${TABLE}.shipAddr2 ;;
  }

  dimension: ship_addr3 {
    type: string
    sql: ${TABLE}.shipAddr3 ;;
  }

  dimension: ship_city {
    type: string
    sql: ${TABLE}.shipCity ;;
  }

  dimension: ship_company {
    type: string
    sql: ${TABLE}.shipCompany ;;
  }

  dimension: ship_country {
    type: string
    sql: ${TABLE}.shipCountry ;;
  }

  dimension: ship_email {
    type: string
    sql: ${TABLE}.shipEmail ;;
  }

  dimension: ship_name {
    type: string
    sql: ${TABLE}.shipName ;;
  }

  dimension: ship_phone {
    type: string
    sql: ${TABLE}.shipPhone ;;
  }

  dimension: ship_post_code {
    type: string
    sql: ${TABLE}.shipPostCode ;;
  }

  dimension: ship_state_or_prov {
    type: string
    sql: ${TABLE}.shipStateOrProv ;;
  }

  dimension: ship_type {
    type: string
    sql: ${TABLE}.shipType ;;
  }

  dimension: ship_username {
    type: string
    sql: ${TABLE}.shipUsername ;;
  }

  dimension: shipment_status_updated {
    type: yesno
    sql: ${TABLE}.shipmentStatusUpdated ;;
  }

  dimension: shipment_update_date {
    type: string
    sql: ${TABLE}.shipmentUpdateDate ;;
  }

  dimension: shipped_carrier {
    type: string
    sql: ${TABLE}.shippedCarrier ;;
  }

  dimension: shipped_carrier_code {
    type: string
    sql: ${TABLE}.shippedCarrierCode ;;
  }

  dimension: shipped_class {
    type: string
    sql: ${TABLE}.shippedClass ;;
  }

  dimension: shipped_date {
    type: string
    sql: ${TABLE}.shippedDate ;;
  }

  dimension: shipped_date_148 {
    type: string
    sql: ${TABLE}.shippedDate_148 ;;
  }

  dimension: shipped_int_code {
    type: string
    sql: ${TABLE}.shippedIntCode ;;
  }

  dimension: shipped_item_qty {
    type: number
    sql: ${TABLE}.shippedItemQty ;;
  }

  dimension: shipped_item_qty_delta {
    type: string
    sql: ${TABLE}.shippedItemQtyDelta ;;
  }

  dimension: shipped_qty {
    type: number
    sql: ${TABLE}.shippedQty ;;
  }

  dimension: sku_sort_master_flag {
    type: yesno
    sql: ${TABLE}.skuSortMasterFlag ;;
  }

  dimension: special_update_flag {
    type: yesno
    sql: ${TABLE}.specialUpdateFlag ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.trackingNumber ;;
  }

  dimension: transportation_charge_type {
    type: number
    sql: ${TABLE}.transportationChargeType ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.unitPrice ;;
  }

  dimension: unit_shipping_price {
    type: string
    sql: ${TABLE}.unitShippingPrice ;;
  }

  dimension: unit_shipping_tax_price {
    type: string
    sql: ${TABLE}.unitShippingTaxPrice ;;
  }

  dimension: unit_tax_price {
    type: string
    sql: ${TABLE}.unitTaxPrice ;;
  }

  dimension: update_date {
    type: string
    sql: ${TABLE}.updateDate ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_sort_master_flag {
    type: yesno
    sql: ${TABLE}.vendorSortMasterFlag ;;
  }

  dimension: void_date {
    type: string
    sql: ${TABLE}.voidDate ;;
  }

  dimension: was_updated {
    type: yesno
    sql: ${TABLE}.wasUpdated ;;
  }

  dimension: was_voided {
    type: yesno
    sql: ${TABLE}.wasVoided ;;
  }

  dimension: wh_location {
    type: string
    sql: ${TABLE}.whLocation ;;
  }

  dimension: width {
    type: string
    sql: ${TABLE}.width ;;
  }

  measure: count {
    type: count
    drill_fields: [bill_name, from_name, ship_name, ship_username]
  }
}
