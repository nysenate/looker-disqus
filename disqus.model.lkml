connection: "disqus_accumulator"

# include all the views
include: "*.view"

explore: authors {}

explore: categories {}

explore: posts {}

explore: settings {}

explore: thread_ident {
  join: threads {
    type: left_outer
    sql_on: ${thread_ident.thread_id} = ${threads.id} ;;
    relationship: many_to_one
  }
}

explore: thread_ident_parsed {
  description: "Threads by Print/Session"
  label: "Threads by Print/Session"
  from: "thread_ident_parsed"
}

explore: threads {}

explore: posts_by_print {
  description: "All comments for a bill and all amendments"
  label: "Posts by Print Number"
  from: "thread_ident_parsed"
  join: posts {
    type: left_outer
    relationship: one_to_many
    sql_on:  ${posts_by_print.tid} = ${posts.thread};;

  }
}
