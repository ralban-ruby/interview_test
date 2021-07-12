connection: "interview_test"

include: "*.view"

explore: industry_leading_indicators_metadata {
  join:  industry_leading_indicators_timeseries {
    relationship: one_to_one
    type: left_outer
    sql_on: ${industry_leading_indicators_metadata.indicatorid} = ${industry_leading_indicators_timeseries.indicatorid} ;;
  }
}
datagroup: interview_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: interview_test_default_datagroup
