view: matched_tags_city {
  sql_table_name: public.matched_tags_city ;;

  dimension: _city {
    type: string
    sql: ${TABLE}."_city" ;;
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
