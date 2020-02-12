view: order {
  sql_table_name: peteandpedro_shopify.`order` ;;
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

  dimension: refunded_flag {
    type: yesno
    sql: ${order_line_refund.refund_id} is not null ;;
  }

  dimension: billing_address_address_1 {
    type: string
    sql: ${TABLE}.billing_address_address_1 ;;
  }

  dimension: billing_address_address_2 {
    type: string
    sql: ${TABLE}.billing_address_address_2 ;;
  }

  dimension: billing_address_city {
    type: string
    sql: ${TABLE}.billing_address_city ;;
  }

  dimension: billing_address_company {
    type: string
    sql: ${TABLE}.billing_address_company ;;
  }

  dimension: billing_address_country {
    type: string
    sql: ${TABLE}.billing_address_country ;;
  }

  dimension: billing_address_country_code {
    type: string
    sql: ${TABLE}.billing_address_country_code ;;
  }

  dimension: billing_address_first_name {
    type: string
    sql: ${TABLE}.billing_address_first_name ;;
  }

  dimension: billing_address_last_name {
    type: string
    sql: ${TABLE}.billing_address_last_name ;;
  }

  dimension: billing_address_latitude {
    type: string
    sql: ${TABLE}.billing_address_latitude ;;
  }

  dimension: billing_address_longitude {
    type: string
    sql: ${TABLE}.billing_address_longitude ;;
  }

  dimension: billing_address_name {
    type: string
    sql: ${TABLE}.billing_address_name ;;
  }

  dimension: billing_address_phone {
    type: string
    sql: ${TABLE}.billing_address_phone ;;
  }

  dimension: billing_address_province {
    type: string
    sql: ${TABLE}.billing_address_province ;;
  }

  dimension: billing_address_province_code {
    type: string
    sql: ${TABLE}.billing_address_province_code ;;
  }

  dimension: billing_address_zip {
    type: string
    sql: ${TABLE}.billing_address_zip ;;
  }

  dimension: browser_ip {
    type: string
    sql: ${TABLE}.browser_ip ;;
  }

  dimension: buyer_accepts_marketing {
    type: yesno
    sql: ${TABLE}.buyer_accepts_marketing ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}.cancel_reason ;;
  }

  dimension_group: cancelled {
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
    sql: ${TABLE}.cancelled_at ;;
  }

  dimension: cart_token {
    type: string
    sql: ${TABLE}.cart_token ;;
  }

  dimension: checkout_token {
    type: string
    sql: ${TABLE}.checkout_token ;;
  }

  dimension_group: closed {
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
    sql: ${TABLE}.closed_at ;;
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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: financial_status {
    type: string
    sql: ${TABLE}.financial_status ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}.fulfillment_status ;;
  }

  dimension: landing_site_base_url {
    type: string
    sql: ${TABLE}.landing_site_base_url ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
    value_format: "0"
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}.order_number ;;
  }

  dimension_group: processed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_month,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: TIMESTAMP_SUB(${TABLE}.processed_at, INTERVAL 5 hour) ;;
  }

  dimension: processing_method {
    type: string
    sql: ${TABLE}.processing_method ;;
  }

  dimension: referring_site {
    type: string
    sql: ${TABLE}.referring_site ;;
  }

  dimension: shipping_address_address_1 {
    type: string
    sql: ${TABLE}.shipping_address_address_1 ;;
  }

  dimension: shipping_address_address_2 {
    type: string
    sql: ${TABLE}.shipping_address_address_2 ;;
  }

  dimension: shipping_address_city {
    type: string
    sql: ${TABLE}.shipping_address_city ;;
  }

  dimension: shipping_address_company {
    type: string
    sql: ${TABLE}.shipping_address_company ;;
  }

  dimension: shipping_address_country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.shipping_address_country ;;
  }

  dimension: shipping_address_country_code {
    type: string
    sql: ${TABLE}.shipping_address_country_code ;;
  }

  dimension: shipping_address_first_name {
    type: string
    sql: ${TABLE}.shipping_address_first_name ;;
  }

  dimension: shipping_address_last_name {
    type: string
    sql: ${TABLE}.shipping_address_last_name ;;
  }

  dimension: shipping_address_latitude {
    type: string
    sql: ${TABLE}.shipping_address_latitude ;;
  }

  dimension: shipping_address_longitude {
    type: string
    sql: ${TABLE}.shipping_address_longitude ;;
  }

  dimension: shipping_address_name {
    type: string
    sql: ${TABLE}.shipping_address_name ;;
  }

  dimension: shipping_address_phone {
    type: string
    sql: ${TABLE}.shipping_address_phone ;;
  }

  dimension: shipping_address_province {
    type: string
    sql: ${TABLE}.shipping_address_province ;;
  }

  dimension: shipping_address_province_code {
    type: string
    sql: ${TABLE}.shipping_address_province_code ;;
  }

  dimension: shipping_address_zip {
    type: string
    sql: ${TABLE}.shipping_address_zip ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: subtotal_price {
    type: number
    sql: ${TABLE}.subtotal_price ;;
  }

  dimension: taxes_included {
    type: yesno
    sql: ${TABLE}.taxes_included ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: total_discounts {
    type: number
    sql: ${TABLE}.total_discounts ;;
  }

  dimension: total_line_items_price {
    type: number
    sql: ${TABLE}.total_line_items_price ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  dimension: price_minus_shipping {
    type: number
    sql: ${total_price} - ${order_shipping_line.price} ;;
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
  }

  dimension: total_weight {
    type: number
    sql: ${TABLE}.total_weight ;;
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

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
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

  dimension: payments {
    type: number
    sql: CASE WHEN ${transaction.refund_id} is null THEN ${total_price} ELSE 0 END ;;
  }

  dimension: total_refunds {
    type: number
    sql: ${refunds.refunds}  ;;
  }

  measure: total_revenue {
    type: number
    value_format: "$#,##0.00"
    sql: SUM(${total_price}) - SUM(${refunds.refunds}) ;;
  }

  measure: total_payments {
    type: sum
    sql: CASE WHEN ${order_line_refund.refund_id} is null THEN ${total_price} ELSE 0 END ;;
    value_format_name: usd
  }

  measure: absolute_tax {
    type: sum
    sql: ${total_tax} ;;
    value_format_name: usd
  }

  measure: total_amount {
    type: sum
    value_format: "$#,##0.00"
    sql: ${total_price} ;;
  }

  measure: avg_amount {
    type: average
    value_format: "$#,##0.00"
    sql: ${total_price} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_orders {
    type: count_distinct
    sql: ${order_number} ;;
  }

  measure: discounts {
    type: sum
    sql: ${total_discounts} ;;
    value_format_name: usd
  }


  measure: avg_order_value {
    type: average
    sql: ${total_price} ;;
    drill_fields: [detail*]
    value_format_name: usd
  }

  # specifically to be used with a date dimension
  measure: count_new_customers {
    type: count_distinct
    sql: ${customer_id} ;;
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      shipping_address_first_name,
      name,
      shipping_address_name,
      source_name,
      shipping_address_last_name,
      billing_address_first_name,
      billing_address_name,
      billing_address_last_name,
      location.name,
      location.id,
      customer.last_name,
      customer.id,
      customer.first_name,
      order_tag.count,
      discount_application.count,
      order_shipping_line.count,
      fulfillment_event.count,
      order_line.count,
      order_discount_code.count,
      order_note_attribute.count,
      fulfillment.count,
      order_url_tag.count,
      transaction.count
    ]
  }
}
