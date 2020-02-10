view: giftcards {
  derived_table: {
    sql:
      SELECT
                orders.id as order_id
                ,orders.order_number
                ,transactions.id as transaction_id
                ,orderline.sku
                ,orders.processed_at as order_processed_at
                ,SUM(case when transactions.kind = 'refund' and gift_card is true then -1
                      when gift_card is true then 1
                      else null end) as orders_count
                ,SUM(case when transactions.kind = 'refund' and gift_card is true then orderline.pre_tax_price*-1
                      when gift_card is true then orderline.pre_tax_price
                      else null end) as gift_card_amount
              FROM peteandpedro.peteandpedro_shopify.transaction transactions
              left join peteandpedro.peteandpedro_shopify.order orders on transactions.order_id = orders.id
              left join peteandpedro.peteandpedro_shopify.order_line orderline on transactions.order_id = orderline.order_id
              where 1=1
              --and DATE(DATETIME(orders.processed_at, "EST")) between '2019-12-01' and '2019-12-31'
              --and gift_card is true
              and transactions.kind in ('sale','authorization','refund')
              group by 1,2,3,4,5
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: transaction_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}.order_number ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension_group: order_processed_at {
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
        sql: TIMESTAMP_SUB(${TABLE}.order_processed_at, INTERVAL 5 hour);;
      }

  dimension: gift_card_amount {
    type: number
    sql: ${TABLE}.gift_card_amount ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.orders_count ;;
    }

  measure: total_giftcard_amt {
    type: sum
    sql: ${gift_card_amount} ;;
    value_format_name: usd
  }

  measure: total_orders {
    type: sum
    sql: ${orders_count} ;;
  }

  set: detail {
    fields: [
      transaction_id,
      order_id,
      order_number,
      sku,
      order_processed_at_time,
      gift_card_amount
    ]
  }
}
