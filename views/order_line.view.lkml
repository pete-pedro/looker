view: order_line {
  sql_table_name: peteandpedro_shopify.order_line ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
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

  dimension: fulfillable_quantity {
    type: number
    sql: ${TABLE}.fulfillable_quantity ;;
  }

  dimension: fulfillment_service {
    type: string
    sql: ${TABLE}.fulfillment_service ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}.fulfillment_status ;;
  }

  dimension: gift_card {
    type: yesno
    sql: ${TABLE}.gift_card ;;
  }

  dimension: grams {
    type: number
    sql: ${TABLE}.grams ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: pre_tax_price {
    type: number
    sql: ${TABLE}.pre_tax_price ;;
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

  dimension: property_amazon_order_item_id {
    type: string
    sql: ${TABLE}.property_amazon_order_item_id ;;
  }

  dimension: property_bigitem_25 {
    type: string
    sql: ${TABLE}.property_bigitem_25 ;;
  }

  dimension: property_charge_interval_frequency {
    type: number
    sql: ${TABLE}.property_charge_interval_frequency ;;
  }

  dimension: property_charge_interval_unit_type {
    type: string
    sql: ${TABLE}.property_charge_interval_unit_type ;;
  }

  dimension: property_charge_on_day_of_month {
    type: number
    sql: ${TABLE}.property_charge_on_day_of_month ;;
  }

  dimension: property_shipping_interval_frequency {
    type: number
    sql: ${TABLE}.property_shipping_interval_frequency ;;
  }

  dimension: property_shipping_interval_unit_type {
    type: string
    sql: ${TABLE}.property_shipping_interval_unit_type ;;
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

  dimension: taxable {
    type: yesno
    sql: ${TABLE}.taxable ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: total_discount {
    type: number
    sql: ${TABLE}.total_discount ;;
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
      name,
      product.id,
      order.shipping_address_first_name,
      order.id,
      order.name,
      order.shipping_address_name,
      order.source_name,
      order.shipping_address_last_name,
      order.billing_address_first_name,
      order.billing_address_name,
      order.billing_address_last_name,
      fulfillment_order_line.count,
      discount_allocation.count,
      order_line_refund.count,
      tax_line.count
    ]
  }
}
