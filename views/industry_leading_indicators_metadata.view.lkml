view: industry_leading_indicators_metadata {
  sql_table_name: "PUBLIC"."INDUSTRY_LEADING_INDICATORS_METADATA"
    ;;

  dimension: aggregate {
    type: string
    sql: ${TABLE}."AGGREGATE" ;;
  }

  dimension: calculation {
    type: string
    sql: ${TABLE}."CALCULATION" ;;
  }

  dimension: citation {
    type: string
    sql: ${TABLE}."CITATION" ;;
  }

  dimension: classification {
    type: string
    sql: ${TABLE}."CLASSIFICATION" ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}."COUNT" ;;
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
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension_group: endtime {
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
    sql: ${TABLE}."ENDTIME" ;;
  }

  dimension: frequency {
    type: string
    sql: ${TABLE}."FREQUENCY" ;;
  }

  dimension: indicatorid {
    type: string
    sql: ${TABLE}."INDICATORID" ;;
  }

  dimension: industrylist {
    type: string
    sql: ${TABLE}."INDUSTRYLIST" ;;
  }

  dimension_group: lastmodified {
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
    sql: ${TABLE}."LASTMODIFIED" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}."NOTES" ;;
  }

  dimension: seasonality {
    type: string
    sql: ${TABLE}."SEASONALITY" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }

  dimension_group: starttime {
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
    sql: ${TABLE}."STARTTIME" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}."UNITS" ;;
  }

  measure: count2 {
    type: count
    drill_fields: [name]
  }
}
