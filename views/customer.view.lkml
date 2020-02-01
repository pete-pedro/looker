view: customer {
  sql_table_name: peteandpedro_shopify.customer ;;
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

  dimension: accepts_marketing {
    type: yesno
    sql: ${TABLE}.accepts_marketing ;;
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

  dimension: default_address_id {
    type: number
    sql: ${TABLE}.default_address_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: new_vs_repeat {
    type: string
    sql: case
         when ${orders_count} = 1 then 'new'
         when ${orders_count} = 0 then 'new'
         else 'repeat' end ;;
    group_label: "Other"
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.orders_count ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }


  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: tax_exempt {
    type: yesno
    sql: ${TABLE}.tax_exempt ;;
  }

  dimension: total_spent {
    type: number
    sql: ${TABLE}.total_spent ;;
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

  dimension: verified_email {
    type: yesno
    sql: ${TABLE}.verified_email ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: sum_total_spent {
    type: sum
    sql: ${total_spent} ;;
    drill_fields: [detail*]
  }

  measure: avg_order_value {
    type: average
    sql: ${total_spent} ;;
    drill_fields: [detail*]
  }

  measure: avg_order_count {
    type: average
    sql: ${orders_count} ;;
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_name,
      first_name,
      customer_tag.count,
      order.count,
      customer_address.count,
      checkout.count
    ]
  }
}
