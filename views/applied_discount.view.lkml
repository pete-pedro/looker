view: applied_discount {
  sql_table_name: peteandpedro_shopify.applied_discount ;;

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

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: applicable {
    type: yesno
    sql: ${TABLE}.applicable ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: non_applicable_reason {
    type: string
    sql: ${TABLE}.non_applicable_reason ;;
  }

  dimension: price_rule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.price_rule_id ;;
  }

  dimension: script_version_id {
    type: number
    sql: ${TABLE}.script_version_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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
    drill_fields: [checkout_line.id, price_rule.id, checkout_shipping_line.id]
  }
}
