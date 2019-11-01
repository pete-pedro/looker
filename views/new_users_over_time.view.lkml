view: new_users_over_time {
  derived_table: {
    sql: select
              dt,
              cnt,
              sum(cnt) over (order by dt rows between unbounded preceding and current row) as cum_cnt
              from (select date(created_at) as dt,
              count(1) as cnt
              from peteandpedro_shopify.customer
              where date(created_at) <= CURRENT_DATE
              group by 1
              ) base;;
  }


  dimension: dt {
    hidden: yes
    type: date
    sql: ${TABLE}.dt ;;
  }

  dimension_group: day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dt ;;
  }

  dimension: cnt {
    hidden: yes
    type: number
    sql: ${TABLE}.cnt ;;
  }

  dimension: cum_cnt {
    hidden: yes
    type: number
    sql: ${TABLE}.cum_cnt ;;
  }

  measure: new_users {
    type: sum
    sql: ${cnt} ;;
    value_format: "#,##0"
  }

  measure: total_new_users {
    type: sum
    sql: ${cum_cnt} ;;
    value_format: "#,##0"
  }

  set: detail {
    fields: [dt, cnt, cum_cnt]
  }
}
