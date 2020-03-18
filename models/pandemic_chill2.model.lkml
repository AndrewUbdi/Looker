connection: "pandemic_and_chill"

# include all the views
include: "/views/**/*.view"

datagroup: pandemic_chill2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pandemic_chill2_default_datagroup

explore: insights_431_4311 {

  join: matched_tags_income_level{
    type: left_outer
    relationship: many_to_many
    sql_on: ${insights_431_4311._shortid} = ${matched_tags_income_level._shortid} ;;
  }

  join: matched_tags_parent{
    type: left_outer
    relationship: many_to_many
    sql_on: ${insights_431_4311._shortid} = ${matched_tags_parent._shortid} ;;
  }

}

explore: matched_tags_age {}

explore: matched_tags_children_between_11_and_17_years_old {}

explore: matched_tags_children_between_1_and_3_years_old {}

explore: matched_tags_children_between_3_and_11_years_old {}

explore: matched_tags_children_under_1_year {}

explore: matched_tags_city {}

explore: matched_tags_country {}

explore: matched_tags_custom_tags {}

explore: matched_tags_gender {}

explore: matched_tags_income_level {}

explore: matched_tags_media {}

explore: matched_tags_mobile_os {}

explore: matched_tags_parent {}

explore: matched_tags_state {}

explore: matched_tags_zip_code {}
