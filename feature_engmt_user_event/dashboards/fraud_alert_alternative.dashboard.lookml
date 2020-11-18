- dashboard: fraud_alert_alternative
  title: Fraud Alert Alternative
  layout: newspaper
  load_configuration: wait
  elements:
  - title: Fraud Alert by Date Feature Status
    name: Fraud Alert by Date Feature Status
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_grid
    fields: [feature_engmt_user_event.reference_date, feature_engmt_user_event.fa_active_duty, feature_engmt_user_event.fa_extended_fraud_alert,
      feature_engmt_user_event.fa_initial_one_year, feature_engmt_user_event.fa_military, feature_engmt_user_event.fa_no_fraud_alert,
      feature_engmt_user_event.fa_total_failures]
    filters:
      feature_engmt_user_event.metric_type: '"FRAUD_ALERT"'
    sorts: [feature_engmt_user_event.reference_date desc]
    limit: 5000
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      feature_engmt_user_event.reference_date: left
    column_order: [feature_engmt_user_event.reference_date, feature_engmt_user_event.fa_active_duty, feature_engmt_user_event.fa_extended_fraud_alert,
      feature_engmt_user_event.fa_initial_one_year, feature_engmt_user_event.fa_military, feature_engmt_user_event.fa_no_fraud_alert,
      feature_engmt_user_event.fa_total_failures, feature_engmt_user_event.fa_acro_manual_file, feature_engmt_user_event.fa_enrollment_not_active,
      feature_engmt_user_event.fa_enrollment_id_not_found, feature_engmt_user_event.fa_general_error, feature_engmt_user_event.fa_inv,
      feature_engmt_user_event.fa_invalid_request_format, feature_engmt_user_event.fa_other_failures, feature_engmt_user_event.fa_partner_key_not_found,
      feature_engmt_user_event.fa_product_enrollment_not_found, feature_engmt_user_event.fa_required_field_missing,
      feature_engmt_user_event.fa_system_unavailable, feature_engmt_user_event.fa_tenant_key_not_found]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      feature_engmt_user_event.reference_date: 158
      feature_engmt_user_event.fa_active_duty: 121
      feature_engmt_user_event.fa_extended_fraud_alert: 177
      feature_engmt_user_event.fa_initial_one_year: 143
      feature_engmt_user_event.fa_military: 100
      feature_engmt_user_event.fa_no_fraud_alert: 138
      feature_engmt_user_event.fa_total_failures: 131
      feature_engmt_user_event.fa_acro_manual_file: 151
      feature_engmt_user_event.fa_enrollment_not_active: 199
      feature_engmt_user_event.fa_enrollment_id_not_found: 198
      feature_engmt_user_event.fa_general_error: 134
      feature_engmt_user_event.fa_inv: 71
      feature_engmt_user_event.fa_invalid_request_format: 188
      feature_engmt_user_event.fa_other_failures: 137
      feature_engmt_user_event.fa_partner_key_not_found: 184
      feature_engmt_user_event.fa_product_enrollment_not_found: 232
      feature_engmt_user_event.fa_required_field_missing: 186
      feature_engmt_user_event.fa_system_unavailable: 169
      feature_engmt_user_event.fa_tenant_key_not_found: 180
    series_cell_visualizations:
      feature_engmt_user_event.fa_active_duty:
        is_active: false
    conditional_formatting: [{type: greater than, value: 150, background_color: "#E57947",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {steps: 10, constraints: {
              min: {type: number, value: 0}, mid: {type: number, value: 0}, max: {
                type: maximum}}, mirror: false, reverse: true, stepped: true}}, bold: false,
        italic: false, strikethrough: false, fields: [feature_engmt_user_event.fa_total_failures]}]
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
    stacking: normal
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    defaults_version: 1
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
      Break down date by range: feature_engmt_user_event.date_granularity_param
    row: 0
    col: 0
    width: 13
    height: 8
  - title: Summary
    name: Summary
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_bar
    fields: [feature_engmt_user_event.fa_active_duty, feature_engmt_user_event.fa_extended_fraud_alert,
      feature_engmt_user_event.fa_initial_one_year, feature_engmt_user_event.fa_military, feature_engmt_user_event.fa_no_fraud_alert,
      feature_engmt_user_event.fa_total_failures]
    filters:
      feature_engmt_user_event.date_granularity_param: Grand total
      feature_engmt_user_event.metric_type: '"FRAUD_ALERT"'
    sorts: [feature_engmt_user_event.fa_active_duty desc]
    limit: 500
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [{}]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      feature_engmt_user_event.fa_active_duty:
        is_active: false
    truncate_column_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: feature_engmt_user_event.fa_active_duty,
            id: feature_engmt_user_event.fa_active_duty, name: Active duty}, {axisId: feature_engmt_user_event.fa_extended_fraud_alert,
            id: feature_engmt_user_event.fa_extended_fraud_alert, name: Extended fraud alert},
          {axisId: feature_engmt_user_event.fa_initial_one_year, id: feature_engmt_user_event.fa_initial_one_year,
            name: Initial one year}, {axisId: feature_engmt_user_event.fa_military, id: feature_engmt_user_event.fa_military,
            name: Military}, {axisId: feature_engmt_user_event.fa_no_fraud_alert, id: feature_engmt_user_event.fa_no_fraud_alert,
            name: No fraud alert}, {axisId: feature_engmt_user_event.fa_total_failures, id: feature_engmt_user_event.fa_total_failures,
            name: Total failures}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
    row: 0
    col: 13
    width: 6
    height: 8
  - title: Fraud Alert by Feature Type
    name: Fraud Alert by Feature Type
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_donut_multiples
    fields: [feature_engmt_user_event.fa_active_duty, feature_engmt_user_event.fa_extended_fraud_alert,
      feature_engmt_user_event.fa_initial_one_year, feature_engmt_user_event.fa_military, feature_engmt_user_event.fa_no_fraud_alert,
      feature_engmt_user_event.fa_total_failures]
    filters:
      feature_engmt_user_event.metric_type: '"FRAUD_ALERT"'
    limit: 5000
    query_timezone: America/Los_Angeles
    show_value_labels: true
    font_size: 25
    hide_legend: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
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
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
    row: 0
    col: 19
    width: 5
    height: 8
  - title: Fraud Alert by Date Operation Errors
    name: Fraud Alert by Date Operation Errors
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_grid
    fields: [feature_engmt_user_event.reference_date, feature_engmt_user_event.fa_acro_manual_file, feature_engmt_user_event.fa_enrollment_not_active,
      feature_engmt_user_event.fa_enrollment_id_not_found, feature_engmt_user_event.fa_general_error, feature_engmt_user_event.fa_inv,
      feature_engmt_user_event.fa_invalid_request_format, feature_engmt_user_event.fa_other_failures, feature_engmt_user_event.fa_partner_key_not_found,
      feature_engmt_user_event.fa_product_enrollment_not_found, feature_engmt_user_event.fa_required_field_missing,
      feature_engmt_user_event.fa_system_unavailable, feature_engmt_user_event.fa_tenant_key_not_found,
      feature_engmt_user_event.fa_02b, feature_engmt_user_event.fa_07c, feature_engmt_user_event.fa_201, feature_engmt_user_event.fa_203,
      feature_engmt_user_event.fa_4f3, feature_engmt_user_event.fa_acro_tfe, feature_engmt_user_event.fa_acro_thick_file_error_code,
      feature_engmt_user_event.fa_add_fraud_eligibility_error, feature_engmt_user_event.fa_add_fraud_error,
      feature_engmt_user_event.fa_ca, feature_engmt_user_event.fa_customer_not_foud, feature_engmt_user_event.fa_fraud_eligibility_error]
    filters:
      feature_engmt_user_event.metric_type: '"FRAUD_ALERT"'
    sorts: [feature_engmt_user_event.reference_date desc]
    limit: 5000
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns: {}
    column_order: [feature_engmt_user_event.reference_date, feature_engmt_user_event.fa_acro_manual_file,
      feature_engmt_user_event.fa_enrollment_not_active, feature_engmt_user_event.fa_enrollment_id_not_found,
      feature_engmt_user_event.fa_general_error, feature_engmt_user_event.fa_inv, feature_engmt_user_event.fa_invalid_request_format,
      feature_engmt_user_event.fa_other_failures, feature_engmt_user_event.fa_partner_key_not_found, feature_engmt_user_event.fa_product_enrollment_not_found,
      feature_engmt_user_event.fa_required_field_missing, feature_engmt_user_event.fa_system_unavailable,
      feature_engmt_user_event.fa_tenant_key_not_found]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      feature_engmt_user_event.reference_date: 125
      feature_engmt_user_event.fa_active_duty: 125
      feature_engmt_user_event.fa_extended_fraud_alert: 155
      feature_engmt_user_event.fa_initial_one_year: 125
      feature_engmt_user_event.fa_military: 125
      feature_engmt_user_event.fa_no_fraud_alert: 125
      feature_engmt_user_event.fa_total_failures: 125
      feature_engmt_user_event.fa_acro_manual_file: 155
      feature_engmt_user_event.fa_enrollment_not_active: 175
      feature_engmt_user_event.fa_enrollment_id_not_found: 175
      feature_engmt_user_event.fa_general_error: 125
      feature_engmt_user_event.fa_inv: 70
      feature_engmt_user_event.fa_invalid_request_format: 175
      feature_engmt_user_event.fa_other_failures: 125
      feature_engmt_user_event.fa_partner_key_not_found: 175
      feature_engmt_user_event.fa_product_enrollment_not_found: 200
      feature_engmt_user_event.fa_required_field_missing: 180
      feature_engmt_user_event.fa_system_unavailable: 175
      feature_engmt_user_event.fa_tenant_key_not_found: 175
      feature_engmt_user_event.fa_02b: 70
      feature_engmt_user_event.fa_07c: 70
      feature_engmt_user_event.fa_201: 70
      feature_engmt_user_event.fa_203: 70
      feature_engmt_user_event.fa_4f3: 70
      feature_engmt_user_event.fa_acro_tfe: 80
      feature_engmt_user_event.fa_acro_thick_file_error_code: 190
      feature_engmt_user_event.fa_add_fraud_eligibility_error: 190
      feature_engmt_user_event.fa_add_fraud_error: 140
      feature_engmt_user_event.fa_ca: 70
      feature_engmt_user_event.fa_customer_not_foud: 155
      feature_engmt_user_event.fa_fraud_eligibility_error: 180
    series_cell_visualizations:
      feature_engmt_user_event.fa_active_duty:
        is_active: false
    conditional_formatting: [{type: greater than, value: 190, background_color: "#E57947",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {steps: 10, constraints: {
              min: {type: number, value: 0}, mid: {type: number, value: 0}, max: {
                type: maximum}}, mirror: false, reverse: true, stepped: true}}, bold: false,
        italic: false, strikethrough: false, fields: !!null ''}]
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
    stacking: normal
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    defaults_version: 1
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
      Break down date by range: feature_engmt_user_event.date_granularity_param
    row: 8
    col: 0
    width: 13
    height: 15
  - title: Alert Failure Reason by Month
    name: Alert Failure Reason by Month
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_grid
    fields: [feature_engmt_user_event.fa_tenant_key_not_found, feature_engmt_user_event.fa_system_unavailable,
      feature_engmt_user_event.fa_required_field_missing, feature_engmt_user_event.fa_product_enrollment_not_found,
      feature_engmt_user_event.fa_partner_key_not_found, feature_engmt_user_event.fa_other_failures, feature_engmt_user_event.fa_invalid_request_format,
      feature_engmt_user_event.fa_inv, feature_engmt_user_event.fa_general_error, feature_engmt_user_event.fa_enrollment_id_not_found,
      feature_engmt_user_event.fa_enrollment_not_active, feature_engmt_user_event.fa_acro_manual_file, feature_engmt_user_event.reference_date,
      feature_engmt_user_event.fa_02b, feature_engmt_user_event.fa_07c, feature_engmt_user_event.fa_201, feature_engmt_user_event.fa_203,
      feature_engmt_user_event.fa_4f3, feature_engmt_user_event.fa_acro_tfe, feature_engmt_user_event.fa_acro_thick_file_error_code,
      feature_engmt_user_event.fa_add_fraud_eligibility_error, feature_engmt_user_event.fa_add_fraud_error,
      feature_engmt_user_event.fa_ca, feature_engmt_user_event.fa_customer_not_foud, feature_engmt_user_event.fa_fraud_eligibility_error]
    filters:
      feature_engmt_user_event.date_granularity_param: Month
      feature_engmt_user_event.metric_type: '"FRAUD_ALERT"'
    sorts: [feature_engmt_user_event.reference_date]
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
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      feature_engmt_user_event.fa_tenant_key_not_found:
        is_active: false
      feature_engmt_user_event.fa_system_unavailable:
        is_active: false
        value_display: true
      feature_engmt_user_event.fa_other_failures:
        is_active: false
    series_text_format:
      feature_engmt_user_event.reference_date: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    conditional_formatting: [{type: greater than, value: 3500, background_color: "#E57947",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: true
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: feature_engmt_user_event.fa_tenant_key_not_found,
            id: feature_engmt_user_event.fa_tenant_key_not_found, name: Tenant key not found},
          {axisId: feature_engmt_user_event.fa_system_unavailable, id: feature_engmt_user_event.fa_system_unavailable,
            name: System unavailable}, {axisId: feature_engmt_user_event.fa_required_field_missing,
            id: feature_engmt_user_event.fa_required_field_missing, name: Required field missing},
          {axisId: feature_engmt_user_event.fa_product_enrollment_not_found, id: feature_engmt_user_event.fa_product_enrollment_not_found,
            name: Product enrollment not found}, {axisId: feature_engmt_user_event.fa_partner_key_not_found,
            id: feature_engmt_user_event.fa_partner_key_not_found, name: Partner key not found},
          {axisId: feature_engmt_user_event.fa_other_failures, id: feature_engmt_user_event.fa_other_failures,
            name: Other failures}, {axisId: feature_engmt_user_event.fa_invalid_request_format,
            id: feature_engmt_user_event.fa_invalid_request_format, name: Invalid request format},
          {axisId: feature_engmt_user_event.fa_inv, id: feature_engmt_user_event.fa_inv, name: Inv}, {axisId: feature_engmt_user_event.fa_general_error,
            id: feature_engmt_user_event.fa_general_error, name: General_Error}, {axisId: feature_engmt_user_event.fa_enrollment_id_not_found,
            id: feature_engmt_user_event.fa_enrollment_id_not_found, name: Enrollment_id not
              found}, {axisId: feature_engmt_user_event.fa_enrollment_not_active, id: feature_engmt_user_event.fa_enrollment_not_active,
            name: Enrollment_id not active}, {axisId: feature_engmt_user_event.fa_acro_manual_file,
            id: feature_engmt_user_event.fa_acro_manual_file, name: Acro manual file}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    stacking: normal
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    truncate_column_names: false
    column_order: {}
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
    row: 8
    col: 13
    width: 11
    height: 7
  - title: Alert Failure Reason by Month Chart
    name: Alert Failure Reason by Month Chart
    model: cda_domain
    explore: feature_engmt_user_event
    type: looker_line
    fields: [feature_engmt_user_event.fa_tenant_key_not_found, feature_engmt_user_event.fa_system_unavailable,
      feature_engmt_user_event.fa_required_field_missing, feature_engmt_user_event.fa_product_enrollment_not_found,
      feature_engmt_user_event.fa_partner_key_not_found, feature_engmt_user_event.fa_other_failures, feature_engmt_user_event.fa_invalid_request_format,
      feature_engmt_user_event.fa_inv, feature_engmt_user_event.fa_general_error, feature_engmt_user_event.fa_enrollment_id_not_found,
      feature_engmt_user_event.fa_enrollment_not_active, feature_engmt_user_event.fa_acro_manual_file, feature_engmt_user_event.reference_date,
      feature_engmt_user_event.fa_02b, feature_engmt_user_event.fa_07c, feature_engmt_user_event.fa_201, feature_engmt_user_event.fa_203,
      feature_engmt_user_event.fa_4f3, feature_engmt_user_event.fa_acro_tfe, feature_engmt_user_event.fa_acro_thick_file_error_code,
      feature_engmt_user_event.fa_add_fraud_eligibility_error, feature_engmt_user_event.fa_add_fraud_error,
      feature_engmt_user_event.fa_ca, feature_engmt_user_event.fa_customer_not_foud, feature_engmt_user_event.fa_fraud_eligibility_error]
    filters:
      feature_engmt_user_event.date_granularity_param: Month
    sorts: [feature_engmt_user_event.reference_date]
    limit: 500
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    y_axes: [{label: '', orientation: left, series: [{axisId: feature_engmt_user_event.fa_tenant_key_not_found,
            id: feature_engmt_user_event.fa_tenant_key_not_found, name: Tenant key not found},
          {axisId: feature_engmt_user_event.fa_system_unavailable, id: feature_engmt_user_event.fa_system_unavailable,
            name: System unavailable}, {axisId: feature_engmt_user_event.fa_required_field_missing,
            id: feature_engmt_user_event.fa_required_field_missing, name: Required field missing},
          {axisId: feature_engmt_user_event.fa_product_enrollment_not_found, id: feature_engmt_user_event.fa_product_enrollment_not_found,
            name: Product enrollment not found}, {axisId: feature_engmt_user_event.fa_partner_key_not_found,
            id: feature_engmt_user_event.fa_partner_key_not_found, name: Partner key not found},
          {axisId: feature_engmt_user_event.fa_other_failures, id: feature_engmt_user_event.fa_other_failures,
            name: Other failures}, {axisId: feature_engmt_user_event.fa_invalid_request_format,
            id: feature_engmt_user_event.fa_invalid_request_format, name: Invalid request format},
          {axisId: feature_engmt_user_event.fa_inv, id: feature_engmt_user_event.fa_inv, name: Inv}, {axisId: feature_engmt_user_event.fa_general_error,
            id: feature_engmt_user_event.fa_general_error, name: General_Error}, {axisId: feature_engmt_user_event.fa_enrollment_id_not_found,
            id: feature_engmt_user_event.fa_enrollment_id_not_found, name: Enrollment_id not
              found}, {axisId: feature_engmt_user_event.fa_enrollment_not_active, id: feature_engmt_user_event.fa_enrollment_not_active,
            name: Enrollment_id not active}, {axisId: feature_engmt_user_event.fa_acro_manual_file,
            id: feature_engmt_user_event.fa_acro_manual_file, name: Acro manual file}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    font_size: '12'
    series_types: {}
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: true
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      feature_engmt_user_event.fa_tenant_key_not_found:
        is_active: false
      feature_engmt_user_event.fa_system_unavailable:
        is_active: false
        value_display: true
      feature_engmt_user_event.fa_other_failures:
        is_active: false
    series_text_format:
      feature_engmt_user_event.reference_date: {}
    table_theme: gray
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 3200, background_color: "#E57947",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {steps: 10, reverse: true,
            stepped: true, constraints: {min: {type: number, value: 2000}}, mirror: false}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    truncate_column_names: false
    listen:
      Event Date: feature_engmt_user_event.filter_on_date
    row: 15
    col: 13
    width: 11
    height: 8
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
