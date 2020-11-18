- dashboard: pin2post
  title: PET PIN Authentication PIN2POST
  layout: newspaper
  load_configuration: wait
  elements:
  - name: Customer Authentication Metrics PIN2POST  table
    title: Customer Authentication Metrics PIN2POST  table
    model: cda_domain
    explore: authentication_user_event
    type: looker_grid
    fields: [authentication_user_event.reference_date, authentication_user_event.registration,
      authentication_user_event.eligible, authentication_user_event.eligible_percent, authentication_user_event.optedin,
      authentication_user_event.opted_percent, authentication_user_event.attempted, authentication_user_event.attempted_percent,
      authentication_user_event.success_enrollment, authentication_user_event.successful_percent,
      authentication_user_event.failure_enrollment, authentication_user_event.failed_percent]
    filters:
      authentication_user_event.pin_type: PIN2POST
    sorts: [authentication_user_event.reference_date desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
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
      authentication_user_event.registration:
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
    title_hidden: true
    listen:
      Break down date by range: authentication_user_event.date_granularity_param
      Event Date: authentication_user_event.filter_on_date
    row: 0
    col: 0
    width: 18
    height: 8
  - name: Customer Authentication Metrics PIN2POST Chart
    title: Customer Authentication Metrics PIN2POST Chart
    model: cda_domain
    explore: authentication_user_event
    type: looker_column
    fields: [authentication_user_event.reference_date, authentication_user_event.registration,
      authentication_user_event.success_enrollment, authentication_user_event.failure_enrollment,
      authentication_user_event.eligible, authentication_user_event.attempted, authentication_user_event.optedin]
    filters:
      authentication_user_event.pin_type: PIN2POST
    sorts: [authentication_user_event.reference_date desc]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
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
    hidden_series: [authentication_user_event.optedin]
    font_size: '12'
    series_types:
      authentication_user_event.registration: area
      authentication_user_event.eligible: area
      authentication_user_event.attempted: area
      authentication_user_event.optedin: area
      authentication_user_event.p2t_not_eligible: area
    show_dropoff: false
    show_null_points: true
    interpolation: linear
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
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
      authentication_user_event.registration:
        is_active: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    title_hidden: true
    listen:
      Break down date by range: authentication_user_event.date_granularity_param
      Event Date: authentication_user_event.filter_on_date
    row: 8
    col: 0
    width: 24
    height: 10
  - name: Customer Authentication Metrics PIN2POST Chart Total
    title: Customer Authentication Metrics PIN2POST Chart Total
    model: cda_domain
    explore: authentication_user_event
    type: looker_bar
    fields: [authentication_user_event.reference_date, authentication_user_event.registration,
      authentication_user_event.eligible, authentication_user_event.optedin, authentication_user_event.attempted,
      authentication_user_event.success_enrollment, authentication_user_event.failure_enrollment]
    filters:
      authentication_user_event.pin_type: PIN2POST
      authentication_user_event.date_granularity_param: Grand total
    sorts: [authentication_user_event.reference_date desc]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: authentication_user_event.registration,
            id: authentication_user_event.registration, name: Registration Attemptes},
          {axisId: authentication_user_event.success_enrollment, id: authentication_user_event.success_enrollment,
            name: 'Successful '}, {axisId: authentication_user_event.failure_enrollment,
            id: authentication_user_event.failure_enrollment, name: Failed}, {axisId: authentication_user_event.attempted,
            id: authentication_user_event.attempted, name: Attempted}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hidden_series: [authentication_user_event.p2t_not_eligible]
    font_size: '12'
    series_types: {}
    show_dropoff: false
    show_null_points: true
    interpolation: linear
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
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
      authentication_user_event.registration:
        is_active: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    title_hidden: true
    listen:
      Event Date: authentication_user_event.filter_on_date
    row: 0
    col: 18
    width: 6
    height: 8
  filters:
  - name: Break down date by range
    title: Break down date by range
    type: field_filter
    default_value: Day
    allow_multiple_values: true
    required: false
    model: cda_domain
    explore: authentication_user_event
    listens_to_filters: []
    field: authentication_user_event.date_granularity_param
  - name: Event Date
    title: Event Date
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
