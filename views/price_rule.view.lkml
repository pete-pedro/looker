view: price_rule {
  sql_table_name: peteandpedro_shopify.price_rule ;;
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

  dimension: allocation_method {
    type: string
    sql: ${TABLE}.allocation_method ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: customer_selection {
    type: string
    sql: ${TABLE}.customer_selection ;;
  }

  dimension_group: ends {
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
    sql: ${TABLE}.ends_at ;;
  }

  dimension: once_per_customer {
    type: yesno
    sql: ${TABLE}.once_per_customer ;;
  }

  dimension_group: starts {
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
    sql: ${TABLE}.starts_at ;;
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

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: usage_limit {
    type: yesno
    sql: ${TABLE}.usage_limit ;;
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
    drill_fields: [id, applied_discount.count, discount_code.count]
  }
}
