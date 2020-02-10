view: refunds {
  derived_table: {
    sql: SELECT distinct transaction.created_at as created_at, orders.order_number,
    case when transaction.refund_id is not null then amount else 0 end as refunds
      FROM `peteandpedro.peteandpedro_shopify.order` as orders
      LEFT JOIN `peteandpedro.peteandpedro_shopify.transaction` as transaction ON orders.id = transaction.order_id
      --and DATE(DATETIME(transaction.created_at, "EST")) = '2020-01-31'
      group by 1,2,3
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
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
    datatype: timestamp
    sql:TIMESTAMP_SUB(${TABLE}.created_at, INTERVAL 5 hour);;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}.order_number ;;
  }

  dimension: refunds {
    type: number
    sql: coalesce(${TABLE}.refunds, 0);;
  }



  set: detail {
    fields: [created_date, order_number, refunds]
  }
}
