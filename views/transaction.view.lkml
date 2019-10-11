view: transaction {
  sql_table_name: peteandpedro_shopify.transaction ;;
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
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
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
    sql: ${TABLE}.processed_at ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
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
