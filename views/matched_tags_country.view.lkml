view: matched_tags_country {
  sql_table_name: public.matched_tags_country ;;

  dimension: _country {
    type: string
    sql: ${TABLE}."_country" ;;
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
