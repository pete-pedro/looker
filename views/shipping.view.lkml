view: shipping {
  sql_table_name: desktopshipper.shipping ;;

  dimension: _file {
    type: string
    sql: ${TABLE}._file ;;
  }

  dimension_group: _fivetran_synced {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: _line {
    type: number
    sql: ${TABLE}._line ;;
  }

  dimension_group: _modified {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._modified ;;
  }

  dimension_group: shipped {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: PARSE_DATE('%m/%d/%Y', SUBSTR(shipped_date, 1, 9)) ;;
  }

  dimension: address_change_user {
    type: string
    sql: ${TABLE}.address_change_user ;;
  }

  dimension: assigned_batch_id {
    type: number
    sql: ${TABLE}.assigned_batch_id ;;
  }

  dimension: avs_override {
    type: yesno
    sql: ${TABLE}.avs_override ;;
  }

  dimension: avs_result_applied {
    type: yesno
    sql: ${TABLE}.avs_result_applied ;;
  }

  dimension: avs_result_ok {
    type: yesno
    sql: ${TABLE}.avs_result_ok ;;
  }

  dimension: avs_result_rec_id {
    type: number
    sql: ${TABLE}.avs_result_rec_id ;;
  }

  dimension: bill_addr_1 {
    type: string
    sql: ${TABLE}.bill_addr_1 ;;
  }

  dimension: bill_addr_2 {
    type: string
    sql: ${TABLE}.bill_addr_2 ;;
  }

  dimension: bill_city {
    type: string
    sql: ${TABLE}.bill_city ;;
  }

  dimension: bill_country {
    type: string
    sql: ${TABLE}.bill_country ;;
  }

  dimension: bill_name {
    type: string
    sql: ${TABLE}.bill_name ;;
  }

  dimension: bill_phone {
    type: string
    sql: ${TABLE}.bill_phone ;;
  }

  dimension: bill_post_code {
    type: string
    sql: ${TABLE}.bill_post_code ;;
  }

  dimension: bill_state_or_prov {
    type: string
    sql: ${TABLE}.bill_state_or_prov ;;
  }

  dimension: block_integration_internal_status_updates {
    type: yesno
    sql: ${TABLE}.block_integration_internal_status_updates ;;
  }

  dimension: block_integration_notes_update {
    type: yesno
    sql: ${TABLE}.block_integration_notes_update ;;
  }

  dimension: block_integration_ship_update {
    type: yesno
    sql: ${TABLE}.block_integration_ship_update ;;
  }

  dimension: block_integration_updates {
    type: yesno
    sql: ${TABLE}.block_integration_updates ;;
  }

  dimension: buyer_email {
    type: string
    sql: ${TABLE}.buyer_email ;;
  }

  dimension: carton_cost {
    type: number
    sql: ${TABLE}.carton_cost ;;
  }

  dimension: carton_weight {
    type: number
    sql: ${TABLE}.carton_weight ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: client_unique_sequence {
    type: number
    sql: ${TABLE}.client_unique_sequence ;;
  }

  dimension: cmlink_id {
    type: number
    sql: ${TABLE}.cmlink_id ;;
  }

  dimension: desc_sort_master_flag {
    type: yesno
    sql: ${TABLE}.desc_sort_master_flag ;;
  }

  dimension: freight_bill_type {
    type: number
    sql: ${TABLE}.freight_bill_type ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: internal_id {
    type: number
    sql: ${TABLE}.internal_id ;;
  }

  dimension: internal_status {
    type: string
    sql: ${TABLE}.internal_status ;;
  }

  dimension: is_amazon_prime {
    type: yesno
    sql: ${TABLE}.is_amazon_prime ;;
  }

  dimension: is_cloud_owned_shipment {
    type: yesno
    sql: ${TABLE}.is_cloud_owned_shipment ;;
  }

  dimension: is_manual_shipment {
    type: yesno
    sql: ${TABLE}.is_manual_shipment ;;
  }

  dimension: is_test_mode_shipment {
    type: yesno
    sql: ${TABLE}.is_test_mode_shipment ;;
  }

  dimension: ise_bay_guaranteed {
    type: yesno
    sql: ${TABLE}.ise_bay_guaranteed ;;
  }

  dimension: label_is_printed {
    type: yesno
    sql: ${TABLE}.label_is_printed ;;
  }

  dimension: label_printed_date {
    type: string
    sql: ${TABLE}.label_printed_date ;;
  }

  dimension: last_updated_date {
    type: string
    sql: ${TABLE}.last_updated_date ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.length ;;
  }

  dimension: line_item_type {
    type: string
    sql: ${TABLE}.line_item_type ;;
  }

  dimension: location_sort_master_flag {
    type: yesno
    sql: ${TABLE}.location_sort_master_flag ;;
  }

  dimension: market_fulfillment_id {
    type: number
    sql: ${TABLE}.market_fulfillment_id ;;
  }

  dimension: market_id {
    type: number
    sql: ${TABLE}.market_id ;;
  }

  dimension: market_internal_id {
    type: string
    sql: ${TABLE}.market_internal_id ;;
  }

  dimension: market_item_id {
    type: number
    sql: ${TABLE}.market_item_id ;;
  }

  dimension: market_order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.market_order_id ;;
  }

  dimension: market_order_item_key {
    type: number
    sql: ${TABLE}.market_order_item_key ;;
  }

  dimension: market_order_number {
    type: string
    sql: ${TABLE}.market_order_number ;;
  }

  dimension: market_primary_key {
    type: string
    sql: ${TABLE}.market_primary_key ;;
  }

  dimension: market_product_key {
    type: string
    sql: ${TABLE}.market_product_key ;;
  }

  dimension: market_sku {
    type: string
    sql: ${TABLE}.market_sku ;;
  }

  dimension: market_title {
    type: string
    sql: ${TABLE}.market_title ;;
  }

  dimension: marketplace_needs_update_flag {
    type: yesno
    sql: ${TABLE}.marketplace_needs_update_flag ;;
  }

  dimension: marketplace_order_status {
    type: string
    sql: ${TABLE}.marketplace_order_status ;;
  }

  dimension: marketplace_payment_status {
    type: string
    sql: ${TABLE}.marketplace_payment_status ;;
  }

  dimension: marketplace_writeback_complete {
    type: yesno
    sql: ${TABLE}.marketplace_writeback_complete ;;
  }

  dimension: marketplace_writeback_date {
    type: string
    sql: ${TABLE}.marketplace_writeback_date ;;
  }

  dimension: negotiated_cost {
    type: number
    sql: ${TABLE}.negotiated_cost ;;
  }

  dimension: order_currency_code {
    type: string
    sql: ${TABLE}.order_currency_code ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_guid {
    type: string
    sql: ${TABLE}.order_guid ;;
  }

  dimension: order_item_id {
    type: number
    sql: ${TABLE}.order_item_id ;;
  }

  dimension: order_item_key {
    type: number
    sql: ${TABLE}.order_item_key ;;
  }

  dimension: order_promo_amount {
    type: number
    sql: ${TABLE}.order_promo_amount ;;
  }

  dimension: order_root_id {
    type: number
    sql: ${TABLE}.order_root_id ;;
  }

  dimension: order_shipping_amount {
    type: number
    sql: ${TABLE}.order_shipping_amount ;;
  }

  dimension: order_tax_amount {
    type: number
    sql: ${TABLE}.order_tax_amount ;;
  }

  dimension: order_total_amount {
    type: number
    sql: ${TABLE}.order_total_amount ;;
  }

  dimension: order_total_weight {
    type: number
    sql: ${TABLE}.order_total_weight ;;
  }

  dimension: ordered_qty {
    type: number
    sql: ${TABLE}.ordered_qty ;;
  }

  dimension: package_id {
    type: string
    sql: ${TABLE}.package_id ;;
  }

  dimension: packed_qty {
    type: number
    sql: ${TABLE}.packed_qty ;;
  }

  dimension: picked_qty {
    type: number
    sql: ${TABLE}.picked_qty ;;
  }

  dimension: profile_id {
    type: number
    sql: ${TABLE}.profile_id ;;
  }

  dimension: rec_id {
    type: number
    sql: ${TABLE}.rec_id ;;
  }

  dimension: requested_carrier {
    type: string
    sql: ${TABLE}.requested_carrier ;;
  }

  dimension: requested_class {
    type: string
    sql: ${TABLE}.requested_class ;;
  }

  dimension: requested_ship_method {
    type: string
    sql: ${TABLE}.requested_ship_method ;;
  }

  dimension: save_date {
    type: string
    sql: ${TABLE}.save_date ;;
  }

  dimension: secondary_order_number {
    type: string
    sql: ${TABLE}.secondary_order_number ;;
  }

  dimension: seller_order_number {
    type: string
    sql: ${TABLE}.seller_order_number ;;
  }

  dimension: shippeddate {
    type: date
    sql: PARSE_DATE('%m/%d/%Y', SUBSTR(shipped_date, 1, 9)) ;;
  }

  dimension: ship_addr_1 {
    type: string
    sql: ${TABLE}.ship_addr_1 ;;
  }

  dimension: ship_addr_2 {
    type: string
    sql: ${TABLE}.ship_addr_2 ;;
  }

  dimension: ship_city {
    type: string
    sql: ${TABLE}.ship_city ;;
  }

  dimension: ship_company {
    type: string
    sql: ${TABLE}.ship_company ;;
  }

  dimension: ship_country {
    type: string
    sql: ${TABLE}.ship_country ;;
  }

  dimension: ship_email {
    type: string
    sql: ${TABLE}.ship_email ;;
  }

  dimension: ship_name {
    type: string
    sql: ${TABLE}.ship_name ;;
  }

  dimension: ship_phone {
    type: string
    sql: ${TABLE}.ship_phone ;;
  }

  dimension: ship_post_code {
    type: string
    sql: ${TABLE}.ship_post_code ;;
  }

  dimension: ship_state_or_prov {
    type: string
    sql: ${TABLE}.ship_state_or_prov ;;
  }

  dimension: ship_type {
    type: number
    sql: ${TABLE}.ship_type ;;
  }

  dimension: ship_username {
    type: string
    sql: ${TABLE}.ship_username ;;
  }

  dimension: shipment_status_updated {
    type: yesno
    sql: ${TABLE}.shipment_status_updated ;;
  }

  dimension: shipment_update_date {
    type: string
    sql: ${TABLE}.shipment_update_date ;;
  }

  dimension: shipped_carrier {
    type: string
    sql: ${TABLE}.shipped_carrier ;;
  }

  dimension: shipped_class {
    type: string
    sql: ${TABLE}.shipped_class ;;
  }

  dimension: shipped_int_code {
    type: string
    sql: ${TABLE}.shipped_int_code ;;
  }

  dimension: shipped_item_qty {
    type: number
    sql: ${TABLE}.shipped_item_qty ;;
  }

  dimension: shipped_qty {
    type: number
    sql: ${TABLE}.shipped_qty ;;
  }

  dimension: sku_sort_master_flag {
    type: yesno
    sql: ${TABLE}.sku_sort_master_flag ;;
  }

  dimension: special_update_flag {
    type: yesno
    sql: ${TABLE}.special_update_flag ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  dimension: transportation_charge_type {
    type: number
    sql: ${TABLE}.transportation_charge_type ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.unit_price ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_sort_master_flag {
    type: yesno
    sql: ${TABLE}.vendor_sort_master_flag ;;
  }

  dimension: void_date {
    type: string
    sql: ${TABLE}.void_date ;;
  }

  dimension: was_updated {
    type: yesno
    sql: ${TABLE}.was_updated ;;
  }

  dimension: was_voided {
    type: yesno
    sql: ${TABLE}.was_voided ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.width ;;
  }

  measure: count {
    type: count
    #drill_fields: [shipped_date, ship_name, bill_name, ship_username]
  }
}
