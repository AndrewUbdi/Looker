view: matched_tags_zip_code {
  sql_table_name: public.matched_tags_zip_code ;;

  dimension: _shortid {
    type: string
    sql: ${TABLE}."_shortid" ;;
  }

  dimension: _zip_code {
    type: string
    sql: ${TABLE}."_zip_code" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
