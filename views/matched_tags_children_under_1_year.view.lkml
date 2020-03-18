view: matched_tags_children_under_1_year {
  sql_table_name: public.matched_tags_children_under_1_year ;;

  dimension: _children_under_1_year {
    type: string
    sql: ${TABLE}."_children_under_1_year" ;;
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
