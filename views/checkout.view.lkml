view: checkout {
  sql_table_name: peteandpedro_shopify.checkout ;;
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

  dimension: abandoned_checkout_url {
    type: string
    sql: ${TABLE}.abandoned_checkout_url ;;
  }

  dimension: applied_discount_amount {
    type: number
    sql: ${TABLE}.applied_discount_amount ;;
  }

  dimension: applied_discount_applicable {
    type: yesno
    sql: ${TABLE}.applied_discount_applicable ;;
  }

  dimension: applied_discount_description {
    type: string
    sql: ${TABLE}.applied_discount_description ;;
  }

  dimension: applied_discount_non_applicable_reason {
    type: string
    sql: ${TABLE}.applied_discount_non_applicable_reason ;;
  }

  dimension: applied_discount_title {
    type: string
    sql: ${TABLE}.applied_discount_title ;;
  }

  dimension: applied_discount_value {
    type: number
    sql: ${TABLE}.applied_discount_value ;;
  }

  dimension: applied_discount_value_type {
    type: string
    sql: ${TABLE}.applied_discount_value_type ;;
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

  dimension: buyer_accepts_marketing {
    type: yesno
    sql: ${TABLE}.buyer_accepts_marketing ;;
  }

  dimension: cart_token {
    type: string
    sql: ${TABLE}.cart_token ;;
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

  dimension_group: completed {
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
    sql: ${TABLE}.completed_at ;;
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

  dimension: credit_card_first_name {
    type: string
    sql: ${TABLE}.credit_card_first_name ;;
  }

  dimension: credit_card_last_name {
    type: string
    sql: ${TABLE}.credit_card_last_name ;;
  }

  dimension: credit_card_month {
    type: number
    sql: ${TABLE}.credit_card_month ;;
  }

  dimension: credit_card_number {
    type: number
    sql: ${TABLE}.credit_card_number ;;
  }

  dimension: credit_card_verification_value {
    type: string
    sql: ${TABLE}.credit_card_verification_value ;;
  }

  dimension: credit_card_year {
    type: number
    sql: ${TABLE}.credit_card_year ;;
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

  dimension: customer_locale {
    type: string
    sql: ${TABLE}.customer_locale ;;
  }

  dimension: device_id {
    type: number
    sql: ${TABLE}.device_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
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

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
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

  dimension: shipping_line {
    type: string
    sql: ${TABLE}.shipping_line ;;
  }

  dimension: shipping_rate_id {
    type: string
    sql: ${TABLE}.shipping_rate_id ;;
  }

  dimension: shipping_rate_price {
    type: number
    sql: ${TABLE}.shipping_rate_price ;;
  }

  dimension: shipping_rate_title {
    type: string
    sql: ${TABLE}.shipping_rate_title ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: source_identifier {
    type: string
    sql: ${TABLE}.source_identifier ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: source_url {
    type: string
    sql: ${TABLE}.source_url ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      shipping_address_first_name,
      credit_card_first_name,
      credit_card_last_name,
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
      checkout_line.count,
      checkout_shipping_line.count,
      checkout_discount_code.count,
      checkout_tax_line.count,
      checkout_url_tag.count
    ]
  }
}
