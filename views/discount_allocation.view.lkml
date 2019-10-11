view: discount_allocation {
  sql_table_name: peteandpedro_shopify.discount_allocation ;;

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

  dimension: amount_set_presentment_money_amount {
    type: number
    sql: ${TABLE}.amount_set_presentment_money_amount ;;
  }

  dimension: amount_set_presentment_money_currency_code {
    type: string
    sql: ${TABLE}.amount_set_presentment_money_currency_code ;;
  }

  dimension: amount_set_shop_money_amount {
    type: number
    sql: ${TABLE}.amount_set_shop_money_amount ;;
  }

  dimension: amount_set_shop_money_currency_code {
    type: string
    sql: ${TABLE}.amount_set_shop_money_currency_code ;;
  }

  dimension: discount_application_index {
    type: number
    sql: ${TABLE}.discount_application_index ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_line_id ;;
  }

  measure: count {
    type: count
    drill_fields: [order_line.id, order_line.name]
  }
}
