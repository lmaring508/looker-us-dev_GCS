include: "/common_filter_date/filter_date_to_extend.view.lkml"


view: authentication_user_event_to_extend {

  sql_table_name: `gcs_cda_us_rpt_views.gcs_authentication_user_event` ;;

  extends: [filter_date_to_extend]
  extension: required

  view_label: "Customer authentication events"

  #filtering and reference date calculation
  dimension: filter_date {
    type: date
    sql: ${pin_metric_dt} ;;
    hidden: yes
  }

  dimension: pin_metric_dt {
    type: date
    sql: ${TABLE}.pin_metric_dt;;
    description: "Metric date"
    label: "Metric date"
    hidden: yes
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}.customerkey ;;
  }

  dimension: bu_region {
    type: string
    sql: ${TABLE}.bu_region ;;
    label: "Business Unit Region"
    description: "Business Unit Region"

  }

  dimension: tenant {
    type: string
    sql: ${TABLE}.tenant ;;
    label: "Tenant"
    description: "Tenant"
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
    label: "Partner"
    description: "Partner"
  }

  dimension: pin_type {
    type: string
    sql: ${TABLE}.pin_type ;;
    label: "Metric Type"
    description: "Metric Type"
    suggestions: ["PIN2POST","PIN2EMAIL","PIN2TEXT","PIN2KBA"]
    suggestable: yes

  }

  dimension: pin_registration_cnt {
    type: number
    sql: ${TABLE}.pin_registration_cnt ;;
    hidden: yes
  }

  dimension: pin_eligible_cnt {
    type: number
    sql: ${TABLE}.pin_eligible_cnt ;;
    hidden: yes
  }

  dimension: pin_optedin_cnt {
    type: number
    sql: ${TABLE}.pin_optedin_cnt ;;
    hidden: yes
  }

  dimension: pin_attempted_cnt {
    type: number
    sql: ${TABLE}.pin_attempted_cnt ;;
    hidden: yes
  }

  dimension: pin_success_enrollment_cnt {
    type: number
    sql: ${TABLE}.pin_success_enrollment_cnt ;;
    hidden: yes
  }

  dimension: pin_failure_enrollment_cnt {
    type: number
    sql: ${TABLE}.pin_failure_enrollment_cnt ;;
    hidden: yes
  }

  dimension: p2t_not_eligible_cnt {
    type: number
    sql: ${TABLE}.p2t_not_eligible_cnt ;;
    hidden: yes
  }

  dimension_group: create_dttm {
    type: time
    sql: ${TABLE}.create_dttm ;;
    hidden: yes
  }

}
