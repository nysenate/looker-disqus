view: posts {
  sql_table_name: disqus.posts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: author {
    type: number
    sql: ${TABLE}.author ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: dislikes {
    type: number
    sql: ${TABLE}.dislikes ;;
  }

  dimension: forum {
    type: string
    sql: ${TABLE}.forum ;;
  }

  dimension: is_approved {
    type: yesno
    sql: ${TABLE}.is_approved ;;
  }

  dimension: is_author_deleted {
    type: yesno
    sql: ${TABLE}.is_author_deleted ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_edited {
    type: yesno
    sql: ${TABLE}.is_edited ;;
  }

  dimension: is_flagged {
    type: yesno
    sql: ${TABLE}.is_flagged ;;
  }

  dimension: is_highlighted {
    type: yesno
    sql: ${TABLE}.is_highlighted ;;
  }

  dimension: is_spam {
    type: yesno
    sql: ${TABLE}.is_spam ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  dimension: num_reports {
    type: number
    sql: ${TABLE}.num_reports ;;
  }

  dimension: parent {
    type: number
    sql: ${TABLE}.parent ;;
  }

  dimension: pid {
    type: number
    value_format_name: id
    sql: ${TABLE}.pid ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.points ;;
  }

  dimension: raw_message {
    type: string
    sql: ${TABLE}.raw_message ;;
  }

  dimension: thread {
    type: number
    sql: ${TABLE}.thread ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
