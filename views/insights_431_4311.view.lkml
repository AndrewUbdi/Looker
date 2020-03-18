view: insights_431_4311 {
  sql_table_name: public.insights_431_4311 ;;

  dimension_group: _createddate {
    type: time
    sql: ${TABLE}."_createddate" ;;
    datatype: epoch
  }

  dimension: _name {
    type: string
    sql: CASE WHEN LOWER(${TABLE}."_name") like '%underground%' THEN '6 Underground'
              WHEN LOWER(${TABLE}."_name") like '%with cats%' THEN 'Dont F*ck With Cats'
              WHEN LOWER(${TABLE}."_name") like '%with yourself%' THEN 'Living With Yourself'
              WHEN LOWER(${TABLE}."_name") like '%bojack%' THEN 'Bojack Horseman'
              WHEN LOWER(${TABLE}."_name") like '%sabrina%' THEN 'Chilling Adventures Sabrina'
              WHEN LOWER(${TABLE}."_name") like '%witcher%' THEN 'The Witcher'
              WHEN LOWER(${TABLE}."_name") like '%castlevania%' THEN 'Castlevania'
              WHEN LOWER(${TABLE}."_name") like '%mulaney%' THEN 'John Mulaney'
              WHEN LOWER(${TABLE}."_name") like '%big mouth%' THEN 'Big Mouth'
              WHEN LOWER(${TABLE}."_name") like '%i am not okay%' THEN 'I Am Not Okay w/ This'
              WHEN LOWER(${TABLE}."_name") like '%a killer%' THEN 'I Am A Killer'
              WHEN LOWER(${TABLE}."_name") like '%altered carbon%' THEN 'Altered Carbon'
              WHEN LOWER(${TABLE}."_name") like '%messiah%' THEN 'Messiah'
              WHEN LOWER(${TABLE}."_name") like '%at work%' THEN 'Cells At Work'
              WHEN LOWER(${TABLE}."_name") like '%lost in space%' THEN 'Lost in Space'
              WHEN LOWER(${TABLE}."_name") like '%locke%' THEN 'Locke & Key'

              WHEN LOWER(${TABLE}."_name") like '%daybreak%' THEN 'Daybreak'
              WHEN LOWER(${TABLE}."_name") like '%october%' THEN 'October Faction'
              WHEN LOWER(${TABLE}."_name") like '%explained%' THEN 'Explained'

              WHEN LOWER(${TABLE}."_name") like '%crash landing%' THEN 'Crash Landing On You'
              WHEN LOWER(${TABLE}."_name") like '%the stranger%' THEN 'The Stranger'
              WHEN LOWER(${TABLE}."_name") like '%disenchantment%' THEN 'Disenchantment'
              WHEN LOWER(${TABLE}."_name") like '%broken%' THEN 'Broken'
              WHEN LOWER(${TABLE}."_name") like '%the office%' THEN 'The Office'
              WHEN LOWER(${TABLE}."_name") like '%good place%' THEN 'The Good Place'
              WHEN LOWER(${TABLE}."_name") like '%great british%' THEN 'Great British Bakeoff'
              WHEN LOWER(${TABLE}."_name") like '%billy on the%' THEN 'Billy on the Street'
              WHEN LOWER(${TABLE}."_name") like '%magician%' THEN 'The Magicians'
              WHEN LOWER(${TABLE}."_name") like '%cheer%' THEN 'Cheer'
              WHEN LOWER(${TABLE}."_name") like '%mindhunter%' THEN 'Mindhunter'
              WHEN LOWER(${TABLE}."_name") like '%dark crystal%' THEN 'Dark Crystal'
              WHEN LOWER(${TABLE}."_name") like '%the crown%' THEN 'The Crown'
              WHEN LOWER(${TABLE}."_name") like '%end of the%' THEN 'End of the F*cking World'
              WHEN LOWER(${TABLE}."_name") like '%green eggs%' THEN 'Green Eggs & Ham'
              WHEN LOWER(${TABLE}."_name") like '%lucifer%' THEN 'Lucifer'
              WHEN LOWER(${TABLE}."_name") like '%100%' THEN 'The 100'
              WHEN LOWER(${TABLE}."_name") like '%narcos%' THEN 'Narcos'
              WHEN LOWER(${TABLE}."_name") like '%good girls%' THEN 'Good Girls'
              WHEN LOWER(${TABLE}."_name") like '%black mirror%' THEN 'Black Mirror'
              WHEN LOWER(${TABLE}."_name") like '%the circle%' THEN 'The Circle'
              WHEN LOWER(${TABLE}."_name") like '%stranger things%' THEN 'Stranger Things'
              WHEN LOWER(${TABLE}."_name") like '%sex education%' THEN 'Sex Education'
              WHEN LOWER(${TABLE}."_name") like '%schitt%' THEN 'Schitts Creek'
              WHEN LOWER(${TABLE}."_name") like '%call saul%' THEN 'Better Call Saul'
              WHEN LOWER(${TABLE}."_name") like '%patriot act%' THEN 'Patriot Act'
              WHEN LOWER(${TABLE}."_name") like '%atypical%' THEN 'Atypical'
              WHEN LOWER(${TABLE}."_name") like '%dracula%' THEN 'Dracula'
              WHEN LOWER(${TABLE}."_name") like '%pok%' THEN 'Pokemon'
              WHEN LOWER(${TABLE}."_name") like '%love is blind%' THEN 'Love is Blind'
              WHEN LOWER(${TABLE}."_name") like '%medical police%' THEN 'Medical Police'
              WHEN LOWER(${TABLE}."_name") like '%killer inside%' THEN 'Killer Inside'
              ELSE 'Other Netflix Show' END;;

  }

  dimension: _shortid {
    type: string
    primary_key: yes
    sql: ${TABLE}."_shortid" ;;
  }

  measure: count {
    type: count
    drill_fields: [_name]
  }
}
