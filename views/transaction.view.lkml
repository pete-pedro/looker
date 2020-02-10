view: transaction {
  sql_table_name: peteandpedro_shopify.transaction ;;
  drill_fields: [id]

  dimension: id {
    primary_key: no
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    hidden: yes
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

  dimension: authorization {
    type: string
    sql: ${TABLE}.authorization ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: TIMESTAMP_SUB(${TABLE}.created_at, INTERVAL 5 hour);;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: currency_exchange_adjustment {
    type: number
    sql: ${TABLE}.currency_exchange_adjustment ;;
  }

  dimension: currency_exchange_currency {
    type: string
    sql: ${TABLE}.currency_exchange_currency ;;
  }

  dimension: currency_exchange_final_amount {
    type: number
    sql: ${TABLE}.currency_exchange_final_amount ;;
  }

  dimension: currency_exchange_id {
    type: number
    sql: ${TABLE}.currency_exchange_id ;;
  }

  dimension: currency_exchange_original_amount {
    type: number
    sql: ${TABLE}.currency_exchange_original_amount ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}.error_code ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    primary_key: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: payment_avs_result_code {
    type: string
    sql: ${TABLE}.payment_avs_result_code ;;
  }

  dimension: payment_credit_card_bin {
    type: string
    sql: ${TABLE}.payment_credit_card_bin ;;
  }

  dimension: payment_credit_card_company {
    type: string
    sql: ${TABLE}.payment_credit_card_company ;;
  }

  dimension: payment_credit_card_number {
    type: string
    sql: ${TABLE}.payment_credit_card_number ;;
  }

  dimension: payment_cvv_result_code {
    type: string
    sql: ${TABLE}.payment_cvv_result_code ;;
  }

  dimension_group: processed {
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
    sql: TIMESTAMP_SUB(${TABLE}.processed_at, INTERVAL 5 hour) ;;
  }

  dimension: receipt {
    type: string
    sql: ${TABLE}.receipt ;;
  }

  dimension: refund_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.refund_id ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: test {
    type: yesno
    sql: ${TABLE}.test ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: payment {
    type: number
    sql: CASE WHEN ${status} = 'success' and ${kind} in ('sale','authorization') and ${parent_id} IS NULL THEN ${amount} ELSE 0 END ;;
  }

  dimension: refunds {
    type: number
    sql: CASE WHEN ${status} = 'success' and ${kind} in ('refund') THEN ${amount} ELSE 0 END ;;
  }

  dimension: reporting_period {
    description: "This Year to date versus Last Year to date"
    group_label: "Created Date"
    sql: CASE
        WHEN EXTRACT(YEAR FROM ${created_raw}) = EXTRACT(YEAR FROM CURRENT_DATE())
        AND EXTRACT(DAYOFYEAR FROM ${created_date}) <= EXTRACT(DAYOFYEAR FROM CURRENT_DATE())
        --AND ${created_date} < CURRENT_DATE()
        THEN 'This Year to Date'

        WHEN EXTRACT(YEAR FROM ${created_date}) + 1 = EXTRACT(YEAR FROM CURRENT_DATE())
        AND EXTRACT(DAYOFYEAR FROM ${created_date}) <= EXTRACT(DAYOFYEAR FROM CURRENT_DATE())
        THEN 'Last Year to Date'
        ELSE NULL

      END
       ;;
  }

  dimension: reporting_period_mtd {
    description: "This Month to date versus Last Month to date"
    group_label: "Created Date"
    sql: CASE
        WHEN EXTRACT(YEAR FROM ${created_raw}) = EXTRACT( YEAR FROM CURRENT_DATE())
        AND EXTRACT(MONTH FROM ${created_raw}) = EXTRACT( MONTH FROM CURRENT_DATE())
        AND ${created_date} <= CURRENT_DATE()
        THEN 'This Month to Date'

        WHEN EXTRACT(YEAR FROM ${created_raw}) = EXTRACT( YEAR FROM CURRENT_DATE())
        AND EXTRACT(MONTH FROM ${created_raw}) + 1 = EXTRACT(MONTH FROM CURRENT_DATE())
        AND EXTRACT(DAY FROM ${created_raw}) <= EXTRACT(DAY FROM CURRENT_DATE())
        THEN 'Last Month to Date'
        ELSE NULL


      END
       ;;
  }

  dimension: reporting_period_wtd {
    description: "This Week to date versus Last Week to date"
    group_label: "Created Date"
    sql: CASE
        WHEN EXTRACT(YEAR FROM ${created_raw}) = EXTRACT( YEAR FROM CURRENT_DATE())
        AND EXTRACT(MONTH FROM ${created_raw}) = EXTRACT( MONTH FROM CURRENT_DATE())
        AND EXTRACT(WEEK FROM ${created_raw}) = EXTRACT( WEEK FROM CURRENT_DATE())
        AND ${created_date} <= CURRENT_DATE()
        THEN 'This Week to Date'

        WHEN EXTRACT(YEAR FROM ${created_raw}) = EXTRACT( YEAR FROM CURRENT_DATE())
        AND EXTRACT(MONTH FROM ${created_raw}) = EXTRACT(MONTH FROM CURRENT_DATE())
        AND EXTRACT(WEEK FROM ${created_raw}) + 1 = EXTRACT(WEEK FROM CURRENT_DATE())
        AND EXTRACT(DAY FROM ${created_raw}) <= EXTRACT(DAY FROM CURRENT_DATE())
        THEN 'Last Week to Date'
        --ELSE NULL


      END
       ;;
  }

  measure: total_payment {
    type: sum
    sql: ${payment};;
    drill_fields: [detail*]
    value_format: "$#,##0.00"
  }

  measure: total_refunds {
    type: sum
    sql: ${refunds} ;;
    value_format: "$#,##0.00"
  }

  measure: avg_amount {
    type: average
    sql: ${amount} ;;
    value_format: "$#,##0.00"
  }

  measure: total_volume {
    type: sum
    sql: ${amount} ;;
    value_format: "$#,##0.00"
  }

  measure: total_revenue {
    type: sum
    sql: ${payment} - ${refunds} ;;
    value_format: "$#,##0.00"

  }

  measure: net_revenue {
    type: sum
    sql: ${amount} - COALESCE(${shipping.order_shipping_amount}, 0) ;;
    value_format: "$#,##0.00"
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: orders {
    type: count_distinct
    sql: ${order_id} ;;
  }



  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      source_name,
      location.name,
      location.id,
      refund.id,
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
