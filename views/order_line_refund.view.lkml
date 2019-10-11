view: order_line_refund {
  sql_table_name: peteandpedro_shopify.order_line_refund ;;
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

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_line_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: refund_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.refund_id ;;
  }

  dimension: restock_type {
    type: string
    sql: ${TABLE}.restock_type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      order_line.id,
      order_line.name,
      refund.id,
      location.name,
      location.id
    ]
  }
}
