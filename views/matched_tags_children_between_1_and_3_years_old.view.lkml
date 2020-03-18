view: matched_tags_children_between_1_and_3_years_old {
  sql_table_name: public.matched_tags_children_between_1_and_3_years_old ;;

  dimension: _children_between_1_and_3_years_old {
    type: string
    sql: ${TABLE}."_children_between_1_and_3_years_old" ;;
  }

  dimension: _shortid {
    type: string
    sql: ${TABLE}."_shortid" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
