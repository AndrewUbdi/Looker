view: matched_tags_gender {
  sql_table_name: public.matched_tags_gender ;;

  dimension: _gender {
    type: string
    sql: ${TABLE}."_gender" ;;
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
