- dashboard: filter_suggestions_
  title: 'Filter Suggestions '
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: uj1ZCyKnPMN7GakVg5BYzV
  layout: newspaper
  tabs:
  - name: ''
    label: ''
  elements:
  - title: 'Filter Suggestions '
    name: 'Filter Suggestions '
    model: cm_260
    explore: products
    type: table
    fields: [products.brand, products.category, products.department, products.retail_price,
      products.count]
    sorts: [products.count desc 0]
    limit: 100000
    column_limit: 50
    listen:
      Category: products.category
    row: 0
    col: 0
    width: 8
    height: 6
    tab_name: ''
  - title: New Tile
    name: New Tile
    model: cm_260
    explore: user_data
    type: looker_grid
    fields: [user_data.max_num_orders, user_data.id, user_data.total_num_orders, user_data.user_id,
      user_data.count]
    sorts: [user_data.count desc 0]
    limit: 500
    column_limit: 50
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
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
    tab_name: ''
  filters:
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options:
      - Accessories
      - Blazers & Jackets
      - Clothing Sets
    model: cm_260
    explore: products
    listens_to_filters: []
    field: products.category
