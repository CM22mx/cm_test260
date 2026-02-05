- dashboard: pdf_5kmore
  title: PDF 5kmore
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: add_a_unique_name_1770308136
      title: Untitled Visualization
      model: cm_260
      explore: user_data
      type: table
      fields: [user_data.id, user_data.count]
      sorts: [user_data.count desc 0]
      limit: 10000
      column_limit: 50
