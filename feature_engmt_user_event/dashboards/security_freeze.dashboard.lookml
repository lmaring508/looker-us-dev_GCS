- dashboard: security_freeze
  title: Security Freeze
  layout: newspaper
  load_configuration: wait
  elements:
  - title: Security Freeze by Event Date
    name: Security Freeze by Event Date
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_grid
    fields: [feature_engmt_user_event.reference_date, feature_engmt_user_event.sf_unlocked, feature_engmt_user_event.sf_locked,
      feature_engmt_user_event.sf_frozen, feature_engmt_user_event.sf_couldnot_find_eligibility_status]
    filters:
      feature_engmt_user_event.metric_type: '"SECURITY_FREEZE"'
    sorts: [feature_engmt_user_event.reference_date desc]
    limit: 5000
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
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
      feature_engmt_user_event.reference_date: left
    column_order: [feature_engmt_user_event.reference_date, feature_engmt_user_event.sf_unlocked, feature_engmt_user_event.sf_locked,
      feature_engmt_user_event.sf_frozen, feature_engmt_user_event.sf_couldnot_find_eligibility_status]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      feature_engmt_user_event.sf_unlocked:
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
      Break down date by range: feature_engmt_user_event.date_granularity_param
    row: 0
    col: 0
    width: 24
    height: 10
  - title: Freeze Status Summary
    name: Freeze Status Summary
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_bar
    fields: [feature_engmt_user_event.reference_date, feature_engmt_user_event.sf_unlocked, feature_engmt_user_event.sf_locked,
      feature_engmt_user_event.sf_frozen, feature_engmt_user_event.sf_couldnot_find_eligibility_status]
    filters:
      feature_engmt_user_event.date_granularity_param: Grand total
      feature_engmt_user_event.metric_type: '"SECURITY_FREEZE"'
    sorts: [feature_engmt_user_event.reference_date desc]
    limit: 5000
    query_timezone: America/Los_Angeles
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: feature_engmt_user_event.sf_unlocked,
            id: feature_engmt_user_event.sf_unlocked, name: Unlocked}, {axisId: feature_engmt_user_event.sf_locked,
            id: feature_engmt_user_event.sf_locked, name: Locked}, {axisId: feature_engmt_user_event.sf_frozen,
            id: feature_engmt_user_event.sf_frozen, name: Frozen}, {axisId: feature_engmt_user_event.sf_couldnot_find_eligibility_status,
            id: feature_engmt_user_event.sf_couldnot_find_eligibility_status, name: Could not
              find eligibility status}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_sql_query_menu_options: false
    pinned_columns:
      measure: left
    column_order: [measure, Grand total]
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: true
    truncate_text: false
    size_to_fit: true
    series_cell_visualizations:
      feature_engmt_user_event.sf_unlocked:
        is_active: false
    table_theme: editable
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
    row: 10
    col: 0
    width: 7
    height: 7
  - title: Freeze Failure Reason2
    name: Freeze Failure Reason2
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_grid
    fields: [feature_engmt_user_event.reference_date, feature_engmt_user_event.sf_couldnot_find_eligibility_status,
      feature_engmt_user_event.sf_no_status]
    filters:
      feature_engmt_user_event.date_granularity_param: Month
      feature_engmt_user_event.metric_type: '"SECURITY_FREEZE"'
    sorts: [feature_engmt_user_event.reference_date desc]
    limit: 5000
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: true
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: feature_engmt_user_event.sf_couldnot_find_eligibility_status,
            id: feature_engmt_user_event.sf_couldnot_find_eligibility_status, name: Could not
              find eligibility status}, {axisId: feature_engmt_user_event.sf_no_status, id: feature_engmt_user_event.sf_no_status,
            name: No status}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_sql_query_menu_options: false
    pinned_columns:
      measure: left
    column_order: [measure, Grand total]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      feature_engmt_user_event.sf_unlocked:
        is_active: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
    row: 10
    col: 7
    width: 10
    height: 7
  - title: Security Freeze by Feature Status
    name: Security Freeze by Feature Status
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_donut_multiples
    fields: [feature_engmt_user_event.reference_date, feature_engmt_user_event.sf_unlocked, feature_engmt_user_event.sf_locked,
      feature_engmt_user_event.sf_frozen, feature_engmt_user_event.sf_couldnot_find_eligibility_status]
    filters:
      feature_engmt_user_event.date_granularity_param: Grand total
      feature_engmt_user_event.metric_type: '"SECURITY_FREEZE"'
    sorts: [feature_engmt_user_event.reference_date desc]
    limit: 5000
    query_timezone: America/Los_Angeles
    show_value_labels: true
    font_size: 0
    show_sql_query_menu_options: false
    pinned_columns:
      measure: left
    column_order: [measure, Grand total]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: false
    size_to_fit: true
    series_cell_visualizations:
      feature_engmt_user_event.sf_unlocked:
        is_active: false
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: feature_engmt_user_event.sf_unlocked,
            id: feature_engmt_user_event.sf_unlocked, name: Unlocked}, {axisId: feature_engmt_user_event.sf_locked,
            id: feature_engmt_user_event.sf_locked, name: Locked}, {axisId: feature_engmt_user_event.sf_frozen,
            id: feature_engmt_user_event.sf_frozen, name: Frozen}, {axisId: feature_engmt_user_event.sf_couldnot_find_eligibility_status,
            id: feature_engmt_user_event.sf_couldnot_find_eligibility_status, name: Could not
              find eligibility status}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    legend_position: center
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
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    show_null_points: true
    interpolation: linear
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
    row: 10
    col: 17
    width: 7
    height: 7
  - title: Freeze Failure Reason
    name: Freeze Failure Reason
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_line
    fields: [feature_engmt_user_event.reference_date, feature_engmt_user_event.sf_couldnot_find_eligibility_status,
      feature_engmt_user_event.sf_no_status]
    filters:
      feature_engmt_user_event.date_granularity_param: Month
      feature_engmt_user_event.metric_type: '"SECURITY_FREEZE"'
    sorts: [feature_engmt_user_event.reference_date desc]
    limit: 5000
    query_timezone: America/Los_Angeles
    x_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: feature_engmt_user_event.sf_couldnot_find_eligibility_status,
            id: feature_engmt_user_event.sf_couldnot_find_eligibility_status, name: Could not
              find eligibility status}, {axisId: feature_engmt_user_event.sf_no_status, id: feature_engmt_user_event.sf_no_status,
            name: No status}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_sql_query_menu_options: false
    pinned_columns:
      measure: left
    column_order: [measure, Grand total]
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: true
    truncate_text: false
    size_to_fit: true
    series_cell_visualizations:
      feature_engmt_user_event.sf_unlocked:
        is_active: false
    table_theme: unstyled
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
    row: 17
    col: 0
    width: 10
    height: 7
  filters:
  - name: Event Date
    title: Event Date
    type: date_filter
    default_value: 31 days
    allow_multiple_values: true
    required: false
  - name: Break down date by range
    title: Break down date by range
    type: field_filter
    default_value: Day
    allow_multiple_values: true
    required: false
    model: cda_domain
    explore: feature_engmt_user_event
    listens_to_filters: []
    field: feature_engmt_user_event.date_granularity_param
