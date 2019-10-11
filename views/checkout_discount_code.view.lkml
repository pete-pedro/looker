view: checkout_discount_code {
  sql_table_name: peteandpedro_shopify.checkout_discount_code ;;

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

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: checkout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.checkout_id ;;
  }

  dimension: discount_id {
    type: number
    sql: ${TABLE}.discount_id ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
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
