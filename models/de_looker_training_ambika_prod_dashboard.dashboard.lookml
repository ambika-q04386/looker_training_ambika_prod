- dashboard: looker_training_q04386_ambika
  title: looker_training_q04386_ambika_prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: feLNFXElVRbynDJIf9Go0s
  elements:
  - title: Total Sessions
    name: Total Sessions
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [count_of_session_id]
    filters:
      dialogflow_cleaned_logs.session_id: "-NULL"
    total: true
    dynamic_fields: [{category: table_calculation, expression: 'count_distinct(${dialogflow_cleaned_logs.session_id})',
        label: New Calculation, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: new_calculation, _type_hint: number,
        is_disabled: true}, {measure: count_of_session_id, based_on: dialogflow_cleaned_logs.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 0
    col: 0
    width: 7
    height: 3
  - title: Avg queries/session
    name: Avg queries/session
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [distinct_session_id, distinct_queries, dialogflow_cleaned_logs.session_id]
    sorts: [distinct_session_id desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0'
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
    hidden_fields: []
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 3
    col: 7
    width: 7
    height: 3
  - title: Handled Queries
    name: Handled Queries
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.is_fallback, dialogflow_cleaned_logs.count]
    filters:
      dialogflow_cleaned_logs.is_fallback: 'No'
    sorts: [dialogflow_cleaned_logs.is_fallback]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0'
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
    hidden_fields: []
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 12
    col: 6
    width: 6
    height: 3
  - title: Unhandled Queries
    name: Unhandled Queries
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.is_fallback, dialogflow_cleaned_logs.count]
    filters:
      dialogflow_cleaned_logs.is_fallback: 'Yes'
    sorts: [dialogflow_cleaned_logs.is_fallback]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0'
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
    hidden_fields: []
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 12
    col: 12
    width: 6
    height: 3
  - title: Total queries
    name: Total queries
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.Total_queries]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0'
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
    hidden_fields: []
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 12
    col: 0
    width: 6
    height: 3
  - title: Average Sentiment Score
    name: Average Sentiment Score
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [average_of_sentiment_score]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.000'
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_format: ''
    label_font_size: 3
    range_formatting: '0'
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    value_format: '0.000'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    limit_displayed_rows: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 15
    col: 0
    width: 7
    height: 6
  - title: Query Sentiment Distribution
    name: Query Sentiment Distribution
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_pie
    fields: [dialogflow_cleaned_logs.Query_sentiment_distribution, dialogflow_cleaned_logs.count]
    sorts: [dialogflow_cleaned_logs.Query_sentiment_distribution]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: legacy
      palette_id: legacy_diverging1
      options:
        steps: 5
    series_colors:
      Partially Negative: "#e35a3f"
      Partially Positive: "#2cbd40"
    series_labels: {}
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_sentiment_score,
            id: average_of_sentiment_score, name: Average of Sentiment Score}], showLabels: true,
        showValues: true, maxValue: 1, minValue: -1, valueFormat: '0.000', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.000'
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_format: ''
    label_font_size: 3
    range_formatting: '0'
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    value_format: '0.000'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 15
    col: 15
    width: 9
    height: 6
  - title: Top 10 Positive Queries
    name: Top 10 Positive Queries
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_grid
    fields: [dialogflow_cleaned_logs.query_text, dialogflow_cleaned_logs.sentiment_score]
    sorts: [dialogflow_cleaned_logs.sentiment_score desc]
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    series_colors:
      Partially Negative: "#e35a3f"
      Partially Positive: "#2cbd40"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_sentiment_score,
            id: average_of_sentiment_score, name: Average of Sentiment Score}], showLabels: true,
        showValues: true, maxValue: 1, minValue: -1, valueFormat: '0.000', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.000'
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_format: ''
    label_font_size: 3
    range_formatting: '0'
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    value_format: '0.000'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 27
    col: 0
    width: 12
    height: 6
  - title: Top 10 Negative Queries
    name: Top 10 Negative Queries
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_grid
    fields: [dialogflow_cleaned_logs.query_text, dialogflow_cleaned_logs.sentiment_score]
    sorts: [dialogflow_cleaned_logs.sentiment_score]
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential1,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    series_colors:
      Partially Negative: "#e35a3f"
      Partially Positive: "#2cbd40"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_sentiment_score,
            id: average_of_sentiment_score, name: Average of Sentiment Score}], showLabels: true,
        showValues: true, maxValue: 1, minValue: -1, valueFormat: '0.000', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.000'
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_format: ''
    label_font_size: 3
    range_formatting: '0'
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    value_format: '0.000'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 27
    col: 12
    width: 12
    height: 6
  - title: Intent Wise Information
    name: Intent Wise Information
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_grid
    fields: [dialogflow_cleaned_logs.intent_triggered, dialogflow_cleaned_logs.Total_sessions,
      average_of_sentiment_score]
    sorts: [average_of_sentiment_score desc]
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_column_widths:
      dialogflow_cleaned_logs.Total_sessions: 200
    series_cell_visualizations:
      dialogflow_cleaned_logs.Total_sessions:
        is_active: false
        palette:
          palette_id: 75ccee24-f38b-8ad3-ccf1-0495aa71d72a
          collection_id: legacy
          custom_colors:
          - "#3a91bd"
          - "#4FBC89"
        value_display: true
      average_of_sentiment_score:
        is_active: false
    series_text_format:
      average_of_sentiment_score:
        bg_color: "#49cec1"
      dialogflow_cleaned_logs.Total_sessions:
        bg_color: "#1ea8df"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: ''
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    series_value_format:
      average_of_sentiment_score:
        name: decimal_3
        decimals: '3'
        format_string: "#,##0.000"
        label: Decimals (3)
        label_prefix: Decimals
    value_labels: legend
    label_type: labPer
    series_colors:
      Partially Negative: "#e35a3f"
      Partially Positive: "#2cbd40"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_sentiment_score,
            id: average_of_sentiment_score, name: Average of Sentiment Score}], showLabels: true,
        showValues: true, maxValue: 1, minValue: -1, valueFormat: '0.000', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.000'
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_format: ''
    label_font_size: 3
    range_formatting: '0'
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    value_format: '0.000'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 50
    col: 12
    width: 12
    height: 5
  - title: User Utterances
    name: User Utterances
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_grid
    fields: [dialogflow_cleaned_logs.query_text, dialogflow_cleaned_logs.Total_sessions]
    sorts: [dialogflow_cleaned_logs.Total_sessions desc]
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_column_widths:
      dialogflow_cleaned_logs.Total_sessions: 200
    series_cell_visualizations:
      dialogflow_cleaned_logs.Total_sessions:
        is_active: false
        palette:
          palette_id: 75ccee24-f38b-8ad3-ccf1-0495aa71d72a
          collection_id: legacy
          custom_colors:
          - "#3a91bd"
          - "#4FBC89"
        value_display: true
      average_of_sentiment_score:
        is_active: false
    series_text_format:
      average_of_sentiment_score:
        bg_color: "#49cec1"
      dialogflow_cleaned_logs.Total_sessions:
        bg_color: "#1ea8df"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: ''
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    series_value_format:
      average_of_sentiment_score:
        name: decimal_3
        decimals: '3'
        format_string: "#,##0.000"
        label: Decimals (3)
        label_prefix: Decimals
    value_labels: legend
    label_type: labPer
    series_colors:
      Partially Negative: "#e35a3f"
      Partially Positive: "#2cbd40"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_sentiment_score,
            id: average_of_sentiment_score, name: Average of Sentiment Score}], showLabels: true,
        showValues: true, maxValue: 1, minValue: -1, valueFormat: '0.000', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.000'
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_format: ''
    label_font_size: 3
    range_formatting: '0'
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    value_format: '0.000'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 21
    col: 0
    width: 24
    height: 6
  - title: Weekly Traffic
    name: Weekly Traffic
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [dialogflow_cleaned_logs.Total_sessions, dialogflow_cleaned_logs.date_week]
    fill_fields: [dialogflow_cleaned_logs.date_week]
    sorts: [dialogflow_cleaned_logs.Total_sessions desc]
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.Total_sessions,
            id: dialogflow_cleaned_logs.Total_sessions, name: Total Sessions}], showLabels: true,
        showValues: true, maxValue: !!null '', minValue: 0, valueFormat: '0', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: ''
    label_value_format: ''
    series_types: {}
    series_colors:
      Partially Negative: "#e35a3f"
      Partially Positive: "#2cbd40"
    series_labels: {}
    x_axis_datetime_label: ''
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_column_widths:
      dialogflow_cleaned_logs.Total_sessions: 200
    series_cell_visualizations:
      dialogflow_cleaned_logs.Total_sessions:
        is_active: false
        palette:
          palette_id: 75ccee24-f38b-8ad3-ccf1-0495aa71d72a
          collection_id: legacy
          custom_colors:
          - "#3a91bd"
          - "#4FBC89"
        value_display: true
      average_of_sentiment_score:
        is_active: false
    series_text_format:
      average_of_sentiment_score:
        bg_color: "#49cec1"
      dialogflow_cleaned_logs.Total_sessions:
        bg_color: "#1ea8df"
    table_theme: editable
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      average_of_sentiment_score:
        name: decimal_3
        decimals: '3'
        format_string: "#,##0.000"
        label: Decimals (3)
        label_prefix: Decimals
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.000'
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_format: ''
    label_font_size: 3
    range_formatting: '0'
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    value_format: '0.000'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 33
    col: 12
    width: 12
    height: 6
  - title: weekly average sentiment trend
    name: weekly average sentiment trend
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [average_of_sentiment_score, dialogflow_cleaned_logs.date_week]
    fill_fields: [dialogflow_cleaned_logs.date_week]
    sorts: [dialogflow_cleaned_logs.date_week desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_sentiment_score,
            id: average_of_sentiment_score, name: Average of Sentiment Score}], showLabels: true,
        showValues: true, maxValue: 1, minValue: -1, valueFormat: '0.000', unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 49, type: linear}]
    label_value_format: ''
    series_types: {}
    series_labels: {}
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.000'
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_format: ''
    label_font_size: 3
    range_formatting: '0'
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    value_format: '0.000'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 15
    col: 7
    width: 8
    height: 6
  - title: Busiest Hour
    name: Busiest Hour
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_funnel
    fields: [dialogflow_cleaned_logs.time_bucket, dialogflow_cleaned_logs.Total_sessions]
    fill_fields: [dialogflow_cleaned_logs.time_bucket]
    sorts: [dialogflow_cleaned_logs.Total_sessions desc]
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.Total_sessions,
            id: dialogflow_cleaned_logs.Total_sessions, name: Total Sessions}], showLabels: true,
        showValues: true, maxValue: !!null '', minValue: 0, valueFormat: '0', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: ''
    label_value_format: ''
    series_types: {}
    series_colors:
      Partially Negative: "#e35a3f"
      Partially Positive: "#2cbd40"
    series_labels: {}
    x_axis_datetime_label: ''
    ordering: none
    show_null_labels: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_column_widths:
      dialogflow_cleaned_logs.Total_sessions: 200
    series_cell_visualizations:
      dialogflow_cleaned_logs.Total_sessions:
        is_active: false
        palette:
          palette_id: 75ccee24-f38b-8ad3-ccf1-0495aa71d72a
          collection_id: legacy
          custom_colors:
          - "#3a91bd"
          - "#4FBC89"
        value_display: true
      average_of_sentiment_score:
        is_active: false
    series_text_format:
      average_of_sentiment_score:
        bg_color: "#49cec1"
      dialogflow_cleaned_logs.Total_sessions:
        bg_color: "#1ea8df"
    table_theme: editable
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      average_of_sentiment_score:
        name: decimal_3
        decimals: '3'
        format_string: "#,##0.000"
        label: Decimals (3)
        label_prefix: Decimals
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.000'
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_format: ''
    label_font_size: 3
    range_formatting: '0'
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    value_format: '0.000'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 0
    col: 14
    width: 10
    height: 6
  - title: Traffic by Time
    name: Traffic by Time
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_area
    fields: [dialogflow_cleaned_logs.time_bucket, dialogflow_cleaned_logs.Total_sessions]
    fill_fields: [dialogflow_cleaned_logs.time_bucket]
    sorts: [dialogflow_cleaned_logs.time_bucket]
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.Total_sessions,
            id: dialogflow_cleaned_logs.Total_sessions, name: Total Sessions}], showLabels: true,
        showValues: true, maxValue: !!null '', minValue: 0, valueFormat: '0', unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 0, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: ''
    label_value_format: ''
    series_types: {}
    series_colors:
      Partially Negative: "#e35a3f"
      Partially Positive: "#2cbd40"
    series_labels: {}
    x_axis_datetime_label: ''
    ordering: none
    show_null_labels: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_column_widths:
      dialogflow_cleaned_logs.Total_sessions: 200
    series_cell_visualizations:
      dialogflow_cleaned_logs.Total_sessions:
        is_active: false
        palette:
          palette_id: 75ccee24-f38b-8ad3-ccf1-0495aa71d72a
          collection_id: legacy
          custom_colors:
          - "#3a91bd"
          - "#4FBC89"
        value_display: true
      average_of_sentiment_score:
        is_active: false
    series_text_format:
      average_of_sentiment_score:
        bg_color: "#49cec1"
      dialogflow_cleaned_logs.Total_sessions:
        bg_color: "#1ea8df"
    table_theme: editable
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      average_of_sentiment_score:
        name: decimal_3
        decimals: '3'
        format_string: "#,##0.000"
        label: Decimals (3)
        label_prefix: Decimals
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.000'
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_format: ''
    label_font_size: 3
    range_formatting: '0'
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    value_format: '0.000'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
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
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 33
    col: 0
    width: 12
    height: 6
  - title: Traffic by Entry Intent
    name: Traffic by Entry Intent
    model: de_looker_training_ambika_prod
    explore: session_level_query
    type: looker_column
    fields: [session_level_query.entry_intent, session_level_query.Total_sessions]
    filters: {}
    sorts: [session_level_query.Total_sessions desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
      Date Date: session_level_query.session_start_date
      Intent: session_level_query.entry_intent
    row: 44
    col: 0
    width: 12
    height: 6
  - title: Traffic by Exit Intent
    name: Traffic by Exit Intent
    model: de_looker_training_ambika_prod
    explore: session_level_query
    type: looker_column
    fields: [session_level_query.Total_sessions, session_level_query.exit_intent]
    sorts: [session_level_query.Total_sessions desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
      Date Date: session_level_query.session_start_date
      Intent: session_level_query.exit_intent
    row: 44
    col: 12
    width: 12
    height: 6
  - title: Conversation Distribution vs Duration
    name: Conversation Distribution vs Duration
    model: de_looker_training_ambika_prod
    explore: session_level_query
    type: looker_column
    fields: [session_level_query.call_duration, session_level_query.Total_sessions]
    sorts: [session_level_query.Total_sessions desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    listen:
      Date Date: session_level_query.session_start_date
    row: 39
    col: 0
    width: 12
    height: 5
  - title: Weekly Intent Trend Over Time
    name: Weekly Intent Trend Over Time
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_line
    fields: [dialogflow_cleaned_logs.date_week, dialogflow_cleaned_logs.intent_triggered,
      dialogflow_cleaned_logs.Total_sessions]
    pivots: [dialogflow_cleaned_logs.intent_triggered]
    fill_fields: [dialogflow_cleaned_logs.date_week]
    sorts: [dialogflow_cleaned_logs.date_week desc, dialogflow_cleaned_logs.intent_triggered]
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: legacy
      palette_id: mixed_dark
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.Total_sessions,
            id: dialogflow_cleaned_logs.Total_sessions, name: Total Sessions}], showLabels: true,
        showValues: true, maxValue: !!null '', minValue: 0, valueFormat: '0', unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 35, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: ''
    label_value_format: ''
    series_types: {}
    series_colors:
      Partially Negative: "#e35a3f"
      Partially Positive: "#2cbd40"
    series_labels: {}
    x_axis_datetime_label: ''
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_column_widths:
      dialogflow_cleaned_logs.Total_sessions: 200
    series_cell_visualizations:
      dialogflow_cleaned_logs.Total_sessions:
        is_active: false
        palette:
          palette_id: 75ccee24-f38b-8ad3-ccf1-0495aa71d72a
          collection_id: legacy
          custom_colors:
          - "#3a91bd"
          - "#4FBC89"
        value_display: true
      average_of_sentiment_score:
        is_active: false
    series_text_format:
      average_of_sentiment_score:
        bg_color: "#49cec1"
      dialogflow_cleaned_logs.Total_sessions:
        bg_color: "#1ea8df"
    table_theme: editable
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      average_of_sentiment_score:
        name: decimal_3
        decimals: '3'
        format_string: "#,##0.000"
        label: Decimals (3)
        label_prefix: Decimals
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.000'
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_format: ''
    label_font_size: 3
    range_formatting: '0'
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    value_format: '0.000'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
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
    map: usa
    map_projection: ''
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 55
    col: 0
    width: 24
    height: 15
  - title: Total Queries vs Call Duration
    name: Total Queries vs Call Duration
    model: de_looker_training_ambika_prod
    explore: session_level_query
    type: looker_column
    fields: [session_level_query.call_duration, session_level_query.count]
    pivots: [session_level_query.call_duration]
    sorts: [session_level_query.call_duration]
    limit: 500
    query_timezone: America/Los_Angeles
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
    listen:
      Date Date: session_level_query.session_start_date
    row: 50
    col: 0
    width: 12
    height: 5
  - title: Deflection Rate
    name: Deflection Rate
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_pie
    fields: [deflection.count, deflection.deflection_rate]
    fill_fields: [deflection.deflection_rate]
    sorts: [deflection.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
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
    series_types: {}
    point_style: none
    series_colors: {}
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
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 6
    col: 15
    width: 9
    height: 6
  - title: Session Distribution vs Call Deflection
    name: Session Distribution vs Call Deflection
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [deflection.count, deflection.deflection]
    fill_fields: [deflection.deflection]
    sorts: [deflection.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Session Distinct Count, orientation: left, series: [{axisId: deflection.count,
            id: deflection.count, name: Deflection}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    defaults_version: 1
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 6
    col: 0
    width: 15
    height: 6
  - title: Average Sentiment vs Call Duration
    name: Average Sentiment vs Call Duration
    model: de_looker_training_ambika_prod
    explore: session_level_query
    type: looker_column
    fields: [session_level_query.average_sentiment_score, session_level_query.call_duration]
    filters:
      session_level_query.call_duration: "-NULL"
    sorts: [session_level_query.call_duration]
    limit: 500
    query_timezone: America/Los_Angeles
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: session_level_query.average_sentiment_score,
            id: session_level_query.average_sentiment_score, name: Average Sentiment
              Score}], showLabels: true, showValues: true, maxValue: 1, minValue: -1,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    defaults_version: 1
    listen:
      Date Date: session_level_query.session_start_date
    row: 39
    col: 12
    width: 12
    height: 5
  - title: Avg call duration(mins)
    name: Avg call duration(mins)
    model: de_looker_training_ambika_prod
    explore: session_level_query
    type: single_value
    fields: [session_level_query.average_Session_duration]
    filters:
      session_level_query.average_Session_duration: NOT NULL
    limit: 500
    dynamic_fields: [{measure: average_of_session_duration, based_on: session_level_query.session_duration,
        expression: '', label: Average of Session Duration, type: average, _kind_hint: measure,
        _type_hint: number}, {measure: average_of_session_minutes, based_on: session_level_query.session_minutes,
        expression: '', label: Average of Session Minutes, type: average, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_session_minutes, based_on: session_level_query.session_minutes,
        expression: '', label: Sum of Session Minutes, type: sum, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Date Date: session_level_query.session_start_date
    row: 0
    col: 7
    width: 7
    height: 3
  - title: Intent co-occurence
    name: Intent co-occurence
    model: de_looker_training_ambika_prod
    explore: intent_co_occurence
    type: looker_column
    fields: [intent_co_occurence.parent_intent, intent_co_occurence.child_intent,
      intent_co_occurence.frequency1]
    pivots: [intent_co_occurence.parent_intent]
    filters: {}
    sorts: [intent_co_occurence.child_intent, intent_co_occurence.parent_intent]
    limit: 500
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
    stacking: normal
    limit_displayed_rows: false
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
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date Date: intent_co_occurence.date_filter
      Intent: intent_co_occurence.child_intent
    row: 70
    col: 0
    width: 24
    height: 13
  - title: Avg Sessions/Day
    name: Avg Sessions/Day
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.Avg_sessions_per_day]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0'
    defaults_version: 1
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 3
    col: 0
    width: 7
    height: 3
  - title: Success Rate
    name: Success Rate
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.Success_rate]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${distinct_session_id}/${no_of_days}",
        label: Avg sessions/day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionsday, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: No_of_days,
        value_format: !!null '', value_format_name: '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: no_of_days, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Session_ID, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_Queries, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.query_text,
        _kind_hint: measure, measure: distinct_queries, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_queries}/${distinct_session_id}",
        label: Avg queries/session, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0%
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
    hidden_fields: []
    listen:
      Date Date: dialogflow_cleaned_logs.date_date
      Intent: dialogflow_cleaned_logs.intent_triggered
    row: 12
    col: 18
    width: 6
    height: 3
  filters:
  - name: Date Date
    title: Date Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    listens_to_filters: []
    field: dialogflow_cleaned_logs.date_date
  - name: Intent
    title: Intent
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: de_looker_training_ambika_prod
    explore: dialogflow_cleaned_logs
    listens_to_filters: []
    field: dialogflow_cleaned_logs.intent_triggered
