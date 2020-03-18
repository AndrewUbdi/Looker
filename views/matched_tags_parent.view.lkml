view: matched_tags_parent {
  sql_table_name: public.matched_tags_parent ;;

  dimension: _parent {
    type: string
    sql: ${TABLE}."_parent" ;;
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
