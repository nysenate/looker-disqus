view: thread_ident_parsed {
  derived_table: {
    sql:
    SELECT
    id, tid, thread_id,
    CONVERT(SUBSTRING_INDEX(ident, '-', 1) USING UTF8) AS session_year,
    CONVERT(SUBSTRING_INDEX(ident, '-', -1) USING UTF8) AS print_number
      FROM
        thread_ident
        WHERE ident like '2%' ;;
  }
  dimension:  tid {
    description: "Disqus Thread ID"
    type: number
    value_format_name: id
    sql:  ${TABLE}.tid ;;
  }
  dimension:  thread_id {
    description: "Internal Thread ID"
    type: number
    value_format_name: id
    sql:  ${TABLE}.thread_id ;;
  }
  dimension:  session_year {
    description: "Session Year"
    type: number
    value_format_name: id
    sql:  ${TABLE}.session_year ;;
  }
  dimension:  print_number {
    description: "Base Print Number"
    type: string
    sql:  ${TABLE}.print_number ;;
  }
}

# view: thread_ident_parsed {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
