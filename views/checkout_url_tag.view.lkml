view: checkout_url_tag {
  sql_table_name: peteandpedro_shopify.checkout_url_tag ;;

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

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
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
