- dashboard: n_dashboard
  title: N Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: add_a_unique_name_1769584551
      title: Untitled Visualization
      model: cm_260
      explore: flights
      type: table
      fields: [flights.flight_num, flights.destination, flights.distance, flights.origin,
          flights.carrier, flights.count]
      sorts: [flights.count desc 0]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
