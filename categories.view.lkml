view: categories {
  sql_table_name: disqus.categories ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cid ;;
  }

  dimension: dq_order {
    type: number
    sql: ${TABLE}.dq_order ;;
  }

  dimension: forum {
    type: string
    sql: ${TABLE}.forum ;;
  }

  dimension: is_default {
    type: yesno
    sql: ${TABLE}.is_default ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
