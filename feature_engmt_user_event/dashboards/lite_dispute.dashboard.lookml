- dashboard: lite_dispute
  title: Lite Dispute
  layout: newspaper
  load_configuration: wait
  elements:
  - title: Dispute by Date
    name: Dispute by Date
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_grid
    fields: [feature_engmt_user_event.dispute_status_failure, feature_engmt_user_event.reference_date, feature_engmt_user_event.dispute_status_initiated,
      feature_engmt_user_event.dispute_status_success, feature_engmt_user_event.dispute_submit_failure,
      feature_engmt_user_event.dispute_submit_initiated, feature_engmt_user_event.dispute_submit_success]
    filters:
      feature_engmt_user_event.metric_type: '"LITE_DISPUTE"'
    sorts: [feature_engmt_user_event.reference_date desc]
    limit: 5000
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      feature_engmt_user_event.dispute_status_failure:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
      Break down by range: feature_engmt_user_event.date_granularity_param
    row: 0
    col: 0
    width: 16
    height: 12
  - title: Summary
    name: Summary
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_grid
    fields: [feature_engmt_user_event.reference_date, feature_engmt_user_event.dispute_status, feature_engmt_user_event.submit_dispute]
    filters:
      feature_engmt_user_event.date_granularity_param: Grand total
      feature_engmt_user_event.metric_type: '"LITE_DISPUTE"'
    sorts: [feature_engmt_user_event.dispute_status desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      measure: left
    column_order: ["$$$_row_numbers_$$$", measure, '2020-05-11']
    show_totals: true
    show_row_totals: true
    series_column_widths:
      measure: 123
      '2020-05-11': 116
    series_cell_visualizations:
      feature_engmt_user_event.dispute_status:
        is_active: false
    series_text_format:
      feature_engmt_user_event.dispute_status:
        align: left
      feature_engmt_user_event.submit_dispute:
        align: left
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Dispute - Submitted and View Status
    name: Dispute - Submitted and View Status
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_donut_multiples
    fields: [feature_engmt_user_event.reference_date, feature_engmt_user_event.dispute_submit_initiated,
      feature_engmt_user_event.dispute_submit_success]
    filters:
      feature_engmt_user_event.date_granularity_param: Grand total
      feature_engmt_user_event.metric_type: '"LITE_DISPUTE"'
    sorts: [feature_engmt_user_event.dispute_submit_initiated desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_value_labels: true
    font_size: 0
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    pinned_columns:
      measure: left
    column_order: ["$$$_row_numbers_$$$", measure, '2020-05-11']
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: true
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      measure: 123
      '2020-05-11': 116
    series_cell_visualizations:
      feature_engmt_user_event.dispute_status:
        is_active: false
    table_theme: gray
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Dispute Trend
    name: Dispute Trend
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_column
    fields: [feature_engmt_user_event.reference_date, feature_engmt_user_event.dispute_status, feature_engmt_user_event.submit_dispute]
    filters:
      feature_engmt_user_event.metric_type: '"LITE_DISPUTE"'
    sorts: [feature_engmt_user_event.dispute_status desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_sql_query_menu_options: false
    pinned_columns:
      measure: left
    column_order: ["$$$_row_numbers_$$$", measure, '2020-05-11']
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: true
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      measure: 123
      '2020-05-11': 116
    series_cell_visualizations:
      feature_engmt_user_event.dispute_status:
        is_active: false
    table_theme: gray
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
      Break down by range: feature_engmt_user_event.date_granularity_param
    row: 12
    col: 0
    width: 24
    height: 6
  filters:
  - name: Event Date
    title: Event Date
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
  - name: Break down by range
    title: Break down by range
    type: field_filter
    default_value: Day
    allow_multiple_values: true
    required: false
    model: cda_domain
    explore: feature_engmt_user_event
    listens_to_filters: []
    field: feature_engmt_user_event.date_granularity_param
