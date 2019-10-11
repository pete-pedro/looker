view: checkout_tax_line {
  sql_table_name: peteandpedro_shopify.checkout_tax_line ;;

  dimension: _fivetran_id {
    type: string
    sql: ${TABLE}._fivetran_id ;;
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

  dimension: checkout_line_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.checkout_line_id ;;
  }

  dimension: checkout_shipping_line_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.checkout_shipping_line_id ;;
  }

  dimension: compare_at {
    type: number
    sql: ${TABLE}.compare_at ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: zone {
    type: string
    sql: ${TABLE}.zone ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      checkout_line.id,
      checkout_shipping_line.id,
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
      checkout.billing_address_last_name
    ]
  }
}
