view: matched_tags_mobile_os {
  sql_table_name: public.matched_tags_mobile_os ;;

  dimension: _mobile_os {
    type: string
    sql: ${TABLE}."_mobile_os" ;;
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
