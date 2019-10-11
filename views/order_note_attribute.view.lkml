view: order_note_attribute {
  sql_table_name: peteandpedro_shopify.order_note_attribute ;;

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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
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
      name,
      order.shipping_address_first_name,
      order.id,
      order.name,
      order.shipping_address_name,
      order.source_name,
      order.shipping_address_last_name,
      order.billing_address_first_name,
      order.billing_address_name,
      order.billing_address_last_name
    ]
  }
}
