view: matched_tags_age {
  sql_table_name: public.matched_tags_age ;;

  dimension: _age {
    type: string
    sql: ${TABLE}."_age" ;;
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
