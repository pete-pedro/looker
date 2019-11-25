view: unique_shipping_packages {
  sql_table_name: desktopshipper.unique_shipping_packages ;;

  dimension_group: shipped {
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
    sql: PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p %Ez', ${TABLE}.shipped_date) ;;
  }

  dimension: carton_cost {
    type: number
    sql: ${TABLE}.carton_cost ;;
  }

  dimension: carton_weight {
    type: number
    sql: ${TABLE}.carton_weight ;;
  }

  dimension: client_unique_sequence {
    type: number
    sql: ${TABLE}.client_unique_sequence ;;
  }

  dimension: internal_id {
    type: number
    sql: ${TABLE}.internal_id ;;
  }

  dimension: market_order_number {
    type: string
    sql: ${TABLE}.market_order_number ;;
  }

  dimension: negotiated_cost {
    type: number
    sql: ${TABLE}.negotiated_cost ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_promo_amount {
    type: number
    sql: ${TABLE}.order_promo_amount ;;
  }

  dimension: order_shipping_amount {
    type: number
    sql: ${TABLE}.order_shipping_amount ;;
  }

  dimension: order_total_weight {
    type: number
    sql: ${TABLE}.order_total_weight ;;
  }

  dimension: package_id {
    type: number
    sql: ${TABLE}.package_id ;;
  }

  dimension: seller_order_number {
    type: string
    sql: ${TABLE}.seller_order_number ;;
  }

  dimension: ship_addr_1 {
    type: string
    sql: ${TABLE}.ship_addr_1 ;;
  }

  dimension: ship_addr_2 {
    type: string
    sql: ${TABLE}.ship_addr_2 ;;
  }

  dimension: ship_city {
    type: string
    sql: ${TABLE}.ship_city ;;
  }

  dimension: ship_company {
    type: string
    sql: ${TABLE}.ship_company ;;
  }

  dimension: ship_country {
    type: string
    sql: ${TABLE}.ship_country ;;
  }

  dimension: ship_email {
    type: string
    sql: ${TABLE}.ship_email ;;
  }

  dimension: ship_name {
    type: string
    sql: ${TABLE}.ship_name ;;
  }

  dimension: ship_phone {
    type: string
    sql: ${TABLE}.ship_phone ;;
  }

  dimension: ship_post_code {
    type: string
    sql: ${TABLE}.ship_post_code ;;
  }

  dimension: ship_state_or_prov {
    type: string
    sql: ${TABLE}.ship_state_or_prov ;;
  }

  dimension: shipped_class {
    type: string
    sql: ${TABLE}.shipped_class ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  measure: count {
    type: count
    drill_fields: [ship_name]
  }
}
