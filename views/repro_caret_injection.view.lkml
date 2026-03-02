view: repro_caret_injection {
  derived_table: {
    sql:
      SELECT *
      FROM `your-gcp-project.{{ _filters['repro_caret_injection.project_id_filter'] | remove: '^' | sql_quote }}.your_table`
      WHERE 1=1
      AND {% condition date_filter %} event_date {% endcondition %}
      ;;
  }

  filter: project_id_filter {
    type: string
    description: "Use a value with an underscore, e.g., ai_Chat"
  }

  filter: date_filter {
    type: date
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }
}
