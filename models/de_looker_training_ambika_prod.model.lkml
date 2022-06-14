connection: "qai_de_looker_training_q04386_ambika_vishwakarma"

# include all the views
include: "/views/**/*.view"
include: "de_looker_training_ambika_prod_dashboard.dashboard"
#include: "/**/*.dashboard"


datagroup: qp_qai_training_1_2021_05_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: qp_qai_training_1_2021_05_default_datagroup


explore: dialogflow_cleaned_logs {
  join: deflection {
    type: left_outer
    relationship: many_to_one
    sql_on: ${dialogflow_cleaned_logs.session_id}=${deflection.session_id};;
  }
}

explore: session_level_query {}

explore: intent_co_occurence {}
