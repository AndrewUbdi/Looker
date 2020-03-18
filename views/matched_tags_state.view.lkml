view: matched_tags_state {
  sql_table_name: public.matched_tags_state ;;

  dimension: _shortid {
    type: string
    sql: ${TABLE}."_shortid" ;;
  }

  dimension: _state {
    type: string
    sql: ${TABLE}."_state" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
