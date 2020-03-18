view: matched_tags_income_level {
  sql_table_name: public.matched_tags_income_level ;;

  dimension: _income_level {
    type: string
    sql: ${TABLE}."_income_level" ;;

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
