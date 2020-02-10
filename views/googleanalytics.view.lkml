view: googleanalytics {
  sql_table_name: peteandpedro_analytics.googleanalytics ;;

  dimension: _fivetran_id {
    type: string
    sql: ${TABLE}._fivetran_id ;;
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

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: exit_rate {
    type: number
    sql: ${TABLE}.exit_rate ;;
  }

  dimension: items_per_purchase {
    type: number
    sql: ${TABLE}.items_per_purchase ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.keyword ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: new_users {
    type: number
    sql: ${TABLE}.new_users ;;
  }

  dimension: percent_new_sessions {
    type: number
    sql: ${TABLE}.percent_new_sessions ;;
  }

  dimension: profile {
    type: string
    sql: ${TABLE}.profile ;;
  }

  dimension: referral_path {
    type: string
    sql: ${TABLE}.referral_path ;;
  }

  dimension: revenue_per_transaction {
    type: number
    sql: ${TABLE}.revenue_per_transaction ;;
  }

  dimension: revenue_per_user {
    type: number
    sql: ${TABLE}.revenue_per_user ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: number_of_sessions {
    type: sum
    sql: ${sessions} ;;
  }
}
