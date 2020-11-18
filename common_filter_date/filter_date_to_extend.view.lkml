view: filter_date_to_extend {

  view_label: "Reference Date and filter by Date"

  dimension: filter_date {
    type: date
    description: "Date for filtering"
    hidden: yes
  }


  filter: filter_on_date {
    type: date
    sql: {% condition filter_on_date %} CAST(${filter_date} as Timestamp) {% endcondition %} ;;
  }

  dimension: reference_date_string  {
    description: "Date"
    type: string
    sql: FORMAT_DATE("%Y-%m-%d", ${filter_date});;
    hidden: yes
  }

  dimension: reference_month_string  {
    description: "Month"
    sql: FORMAT_DATE("%Y-%m",  ${filter_date})  ;;
    type:  string
    hidden: yes
  }

  dimension: reference_year_string  {
    description: "Year"
    sql: FORMAT_DATE("%Y", ${filter_date})  ;;
    type: string
    hidden: yes
  }

  dimension: reference_grand_total  {
    description: "Grand Total"
    sql: "Grand total"  ;;
    type: string
    hidden: yes
  }

  parameter: date_granularity_param {
    label: "Break down date by range"
    description: "Break down date by range"
    type: string
    allowed_value: { value: "@{granularity_day}" }
    allowed_value: { value: "@{granularity_month}" }
    allowed_value: { value: "@{granularity_year}" }
    allowed_value: { value: "@{granularity_grand_total}" }

    default_value: "@{granularity_day}"
  }

  dimension: reference_date{
    description: "Reference Date"
    label: "Reference Date"
    can_filter: no
    sql:
        {% if date_granularity_param._parameter_value == "'@{granularity_day}'" %}
          ${reference_date_string}
        {% elsif date_granularity_param._parameter_value == "'@{granularity_month}'" %}
          ${reference_month_string}
        {% elsif date_granularity_param._parameter_value == "'@{granularity_year}'" %}
          ${reference_year_string}
        {% elsif date_granularity_param._parameter_value == "'@{granularity_grand_total}'" %}
          ${reference_grand_total}
        {% endif %};;
  }
}
