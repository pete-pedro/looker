view: discount_application {
  sql_table_name: peteandpedro_shopify.discount_application ;;

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

  dimension: allocation_method {
    type: string
    sql: ${TABLE}.allocation_method ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: target_selection {
    type: string
    sql: ${TABLE}.target_selection ;;
  }

  dimension: target_type {
    type: string
    sql: ${TABLE}.target_type ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: value_type {
    type: string
    sql: ${TABLE}.value_type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
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
