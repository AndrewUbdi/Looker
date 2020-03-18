view: matched_tags_custom_tags {
  sql_table_name: public.matched_tags_custom_tags ;;

  dimension: _custom_tags {
    type: string
    sql: ${TABLE}."_custom_tags" ;;
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
