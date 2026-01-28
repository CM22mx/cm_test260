- dashboard: e_dashboard
  title: E Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: add_a_unique_name_1769584205
      title: Untitled Visualization
      model: cm_260
      explore: orders
      type: looker_grid
      fields: [orders.id, orders.status, orders.user_id, orders.count]
      sorts: [orders.count desc 0]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
