view: thread_ident {
  sql_table_name: disqus.thread_ident ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ident {
    type: string
    sql: ${TABLE}.ident ;;
  }

  dimension: thread_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.thread_id ;;
  }

  dimension: tid {
    type: number
    value_format_name: id
    sql: ${TABLE}.tid ;;
  }

  measure: count {
    type: count
    drill_fields: [id, threads.id]
  }
}
