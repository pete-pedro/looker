view: checkout_line {
  sql_table_name: peteandpedro_shopify.checkout_line ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: _fivetran_synced {
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

  dimension: checkout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.checkout_id ;;
  }

  dimension: compare_at_price {
    type: number
    sql: ${TABLE}.compare_at_price ;;
  }

  dimension: destination_location_id {
    type: number
    sql: ${TABLE}.destination_location_id ;;
  }

  dimension: fulfillment_service {
    type: string
    sql: ${TABLE}.fulfillment_service ;;
  }

  dimension: grams {
    type: number
    sql: ${TABLE}.grams ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: line_price {
    type: number
    sql: ${TABLE}.line_price ;;
  }

  dimension: origin_location_id {
    type: number
    sql: ${TABLE}.origin_location_id ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: property_bigitem_25 {
    type: string
    sql: ${TABLE}.property_bigitem_25 ;;
  }

  dimension: property_fireworks_1776 {
    type: string
    sql: ${TABLE}.property_fireworks_1776 ;;
  }

  dimension: property_freegift {
    type: string
    sql: ${TABLE}.property_freegift ;;
  }

  dimension: property_mom_25 {
    type: string
    sql: ${TABLE}.property_mom_25 ;;
  }

  dimension: property_shipping_interval_frequency {
    type: number
    sql: ${TABLE}.property_shipping_interval_frequency ;;
  }

  dimension: property_shipping_interval_unit_type {
    type: string
    sql: ${TABLE}.property_shipping_interval_unit_type ;;
  }

  dimension: property_special {
    type: string
    sql: ${TABLE}.property_special ;;
  }

  dimension: property_subscription_id {
    type: number
    sql: ${TABLE}.property_subscription_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: requires_shipping {
    type: yesno
    sql: ${TABLE}.requires_shipping ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.tax_code ;;
  }

  dimension: taxable {
    type: yesno
    sql: ${TABLE}.taxable ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: variant_id {
    type: number
    sql: ${TABLE}.variant_id ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      checkout.shipping_address_first_name,
      checkout.credit_card_first_name,
      checkout.credit_card_last_name,
      checkout.id,
      checkout.name,
      checkout.shipping_address_name,
      checkout.source_name,
      checkout.shipping_address_last_name,
      checkout.billing_address_first_name,
      checkout.billing_address_name,
      checkout.billing_address_last_name,
      product.id,
      applied_discount.count,
      checkout_tax_line.count
    ]
  }
}
