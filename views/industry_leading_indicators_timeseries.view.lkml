view: industry_leading_indicators_timeseries {
  sql_table_name: "PUBLIC"."INDUSTRY_LEADING_INDICATORS_TIMESERIES"
    ;;

  dimension_group: date {
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
    sql: ${TABLE}."DATE" ;;
  }

  dimension: indicatorid {
    primary_key: yes
    type: string
    sql: ${TABLE}."INDICATORID" ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}."VALUE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
