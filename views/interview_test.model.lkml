connection: "interview_test"

include: "*.view"

explore: industry_leading_indicators_metadata {}
explore: industry_leading_indicators_timeseries {}

datagroup: interview_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: interview_test_default_datagroup
