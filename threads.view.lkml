view: threads {
  sql_table_name: disqus.threads ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: author {
    type: number
    sql: ${TABLE}.author ;;
  }

  dimension: category {
    type: number
    sql: ${TABLE}.category ;;
  }

  dimension: clean_title {
    type: string
    sql: ${TABLE}.clean_title ;;
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

  dimension: feed {
    type: string
    sql: ${TABLE}.feed ;;
  }

  dimension: forum {
    type: string
    sql: ${TABLE}.forum ;;
  }

  dimension: highlighted {
    type: string
    sql: ${TABLE}.highlighted ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.is_closed ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_spam {
    type: yesno
    sql: ${TABLE}.is_spam ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: posts {
    type: number
    sql: ${TABLE}.posts ;;
  }

  dimension: raw_message {
    type: string
    sql: ${TABLE}.raw_message ;;
  }

  dimension: signed_link {
    type: string
    sql: ${TABLE}.signed_link ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: tid {
    type: number
    value_format_name: id
    sql: ${TABLE}.tid ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_score {
    type: number
    sql: ${TABLE}.user_score ;;
  }

  dimension: user_sub {
    type: yesno
    sql: ${TABLE}.user_sub ;;
  }

  measure: count {
    type: count
    drill_fields: [id, bulk_posts.count, thread_ident.count]
  }
}
