view: checkout_shipping_line {
  sql_table_name: peteandpedro_shopify.checkout_shipping_line ;;
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

  dimension: api_client_id {
    type: number
    sql: ${TABLE}.api_client_id ;;
  }

  dimension: carrier_identifier {
    type: string
    sql: ${TABLE}.carrier_identifier ;;
  }

  dimension: carrier_service_id {
    type: number
    sql: ${TABLE}.carrier_service_id ;;
  }

  dimension: checkout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.checkout_id ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: delivery_category {
    type: string
    sql: ${TABLE}.delivery_category ;;
  }

  dimension: discounted_price {
    type: number
    sql: ${TABLE}.discounted_price ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: markup {
    type: number
    sql: ${TABLE}.markup ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: requested_fulfillment_service_id {
    type: string
    sql: ${TABLE}.requested_fulfillment_service_id ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: validation_context {
    type: string
    sql: ${TABLE}.validation_context ;;
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
      applied_discount.count,
      checkout_tax_line.count
    ]
  }
}
