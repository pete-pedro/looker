view: discount_code {
  sql_table_name: peteandpedro_shopify.discount_code ;;
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

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
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

  dimension: price_rule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.price_rule_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, price_rule.id]
  }
}
