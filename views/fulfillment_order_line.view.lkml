view: fulfillment_order_line {
  sql_table_name: peteandpedro_shopify.fulfillment_order_line ;;

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

  dimension: fulfillment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.fulfillment_id ;;
  }

  dimension: order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_line_id ;;
  }

  measure: count {
    type: count
    drill_fields: [order_line.id, order_line.name, fulfillment.id]
  }
}
