view: authors {
  sql_table_name: disqus.authors ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: about {
    type: string
    sql: ${TABLE}.about ;;
  }

  dimension: aid {
    type: number
    value_format_name: id
    sql: ${TABLE}.aid ;;
  }

  dimension: disable_trackers {
    type: yesno
    sql: ${TABLE}.disable_trackers ;;
  }

  dimension: is_anon {
    type: yesno
    sql: ${TABLE}.is_anon ;;
  }

  dimension: is_primary {
    type: yesno
    sql: ${TABLE}.is_primary ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}.is_private ;;
  }

  dimension_group: joined {
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
    sql: ${TABLE}.joined_at ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: power_contrib {
    type: yesno
    sql: ${TABLE}.power_contrib ;;
  }

  dimension: rep {
    type: number
    sql: ${TABLE}.rep ;;
  }

  dimension: signed_url {
    type: string
    sql: ${TABLE}.signed_url ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [id, username, name]
  }
}
