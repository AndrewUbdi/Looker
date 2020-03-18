view: matched_tags_media {
  sql_table_name: public.matched_tags_media ;;

  dimension: _media {
    type: string
    sql: ${TABLE}."_media" ;;
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
