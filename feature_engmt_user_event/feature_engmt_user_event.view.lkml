include: "/common_filter_date/filter_date_to_extend.view.lkml"

view: feature_engmt_user_event {
  sql_table_name: `gcs_cda_us_rpt_views.gcs_prod_feature_engmt_user_event`;;

  extends: [filter_date_to_extend]
  view_label: "Events Count per Metric"

  dimension: filter_date {
    type: date
    sql: ${TABLE}.EVENT_DATE;;
    description: "Event date"
    label: "Event date"
    hidden: yes
  }

  dimension: metric_type {
    type: string
    sql: ${TABLE}.METRIC_TYPE ;;
    hidden: no
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}.customerKey ;;
    hidden: no
  }


  #------------------------------------------------------------------------------
  # Lite Dispute
  measure: dispute_status_failure {
    description: "Status failure"
    label: "Status failure"
    type: sum
    sql: ${TABLE}.DISPUTE_STATUS_FAILURE ;;
    group_label:"Lite Dispute - Status"
  }

  measure: dispute_status_initiated {
    description: "Status initiated"
    label: "Status initiated"
    type: sum
    sql: ${TABLE}.DISPUTE_STATUS_INITIATED ;;
    group_label:"Lite Dispute - Status"
  }

  measure: dispute_status_success {
    description: "Status success"
    label: "Status success"
    type: sum
    sql: ${TABLE}.DISPUTE_STATUS_SUCCESS ;;
    group_label:"Lite Dispute - Status"
  }

  measure: dispute_submit_failure {
    description: "Submit failure"
    label: "Submit failure"
    type: sum
    sql: ${TABLE}.DISPUTE_SUBMIT_FAILURE ;;
    group_label:"Lite Dispute - Submit"
  }

  measure: dispute_submit_initiated {
    description: "Submit initiated"
    label: "Submit initiated"
    type: sum
    sql: ${TABLE}.DISPUTE_SUBMIT_INITIATED ;;
    group_label:"Lite Dispute - Submit"
    }

  measure: dispute_submit_success {
    description: "Submit success"
    label: "Submit success"
    type: sum
    sql: ${TABLE}.DISPUTE_SUBMIT_SUCCESS ;;
    group_label:"Lite Dispute - Submit"
  }

  measure: submit_dispute{
    type:  sum
    description: "Submit Dispute"
    label: "Submit Dispute"
    group_label: "Lite Dispute - Totals"
    sql:   ${TABLE}.DISPUTE_SUBMIT_INITIATED  + ${TABLE}.DISPUTE_SUBMIT_SUCCESS  ;;
  }

  measure: dispute_status{
    type:  sum
    description: "Dispute Status"
    label: "Dispute Status"
    group_label: "Lite Dispute - Totals"
    sql: ${TABLE}.DISPUTE_STATUS_INITIATED +  ${TABLE}.DISPUTE_STATUS_SUCCESS ;;
  }

  #----------------------------------------------------------------------------#
  # Fraud Alert

  measure: fa_enrollment_id_not_found {
    description: "Enrollment_id not found"
    label: "Enrollment_id not found"
    type: sum
    value_format_name: id
    sql: ${TABLE}.FA_ENROLLMENT_ID_NOT_FOUND ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_acro_manual_file {
    description: "Acro manual file"
    label: "Acro manual file"
    type: sum
    sql: ${TABLE}.FA_ACRO_MANUAL_FILE ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_enrollment_not_active {
    description: "Enrollment not active"
    label: "Enrollment not active"
    type: sum
    sql: ${TABLE}.FA_ENROLLMENT_NOT_ACTIVE ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_general_error {
    description: "General_Error"
    label: "General_Error"
    type: sum
    sql: ${TABLE}.FA_GENERAL_ERROR ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_inv {
    description: "Inv"
    label: "Inv"
    type: sum
    sql: ${TABLE}.FA_INV ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_invalid_request_format {
    description: "Invalid request format"
    label: "Invalid request format"
    type: sum
    sql: ${TABLE}.FA_INVALID_REQUEST_FORMAT ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_other_failures {
    description: "Other failures"
    label: "Other failures"
    type: sum
    sql: ${TABLE}.FA_OTHER_FAILURES ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_partner_key_not_found {
    description: "Partner key not found"
    label: "Partner key not found"
    type: sum
    sql: ${TABLE}.FA_PARTNER_KEY_NOT_FOUND ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_product_enrollment_not_found {
    description: "Product enrollment not found"
    label: "Product enrollment not found"
    type: sum
    sql: ${TABLE}.FA_PRODUCT_ENROLLMENT_NOT_FOUND ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_required_field_missing {
    description: "Required field missing"
    label: "Required field missing"
    type: sum
    sql: ${TABLE}.FA_REQUIRED_FIELD_MISSING ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_fraud_eligibility_error {
    description: "Fraud Eligibility Error"
    label: "Fraud Eligibility Error"
    type: sum
    sql: ${TABLE}.FA_FRAUD_ELIGIBILITY_ERROR ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_customer_not_foud {
    description: "Customer Not Found"
    label: "Customer Not Found"
    type: sum
    sql: ${TABLE}.FA_CUSTOMER_NOT_FOUND ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_add_fraud_error {
    description: "Add Fraud Error"
    label: "Add Fraud Error"
    type: sum
    sql: ${TABLE}.FA_ADD_FRAUD_ERROR ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_add_fraud_eligibility_error {
    description: "Add Fraud Eligibility Error"
    label: "Add Fraud Eligibility Error"
    type: sum
    sql: ${TABLE}.FA_ADD_FRAUD_ELIGIBILITY_ERROR ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_07c {
    description: "07C"
    label: "07C"
    type: sum
    sql: ${TABLE}.FA_07C ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_203 {
    description: "203"
    label: "203"
    type: sum
    sql: ${TABLE}.FA_203 ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_4f3 {
    description: "4F3"
    label: "4F3"
    type: sum
    sql: ${TABLE}.FA_4F3 ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_201 {
    description: "201"
    label: "201"
    type: sum
    sql: ${TABLE}.FA_201 ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_acro_tfe {
    description: "Acro Tfe"
    label: "Acro Tfe"
    type: sum
    sql: ${TABLE}.FA_ACRO_TFE ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_acro_thick_file_error_code {
    description: "Acro Thick File Error Code"
    label: "Acro Thick File Error Code"
    type: sum
    sql: ${TABLE}.FA_ACRO_THICK_FILE_ERROR_CODE ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_02b {
    description: "02B"
    label: "02B"
    type: sum
    sql: ${TABLE}.FA_02B ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_ca {
    description: "CA"
    label: "CA"
    type: sum
    sql: ${TABLE}.FA_CA ;;
    group_label:"Fraud Alert - Operation Error"
  }


  measure: fa_system_unavailable {
    description: "System unavailable"
    label: "System unavailable"
    type: sum
    sql: ${TABLE}.FA_SYSTEM_UNAVAILABLE ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_tenant_key_not_found {
    description: "Tenant key not found"
    label: "Tenant key not found"
    type: sum
    sql: ${TABLE}.FA_TENANT_KEY_NOT_FOUND ;;
    group_label:"Fraud Alert - Operation Error"
  }

  measure: fa_military {
    description: "Military"
    label: "Military"
    type: sum
    sql: ${TABLE}.FA_MILITARY ;;
    group_label:"Fraud Alert - Feature Type"
  }

  measure: fa_extended_fraud_alert {
    description: "Extended fraud alert"
    label: "Extended fraud alert"
    type: sum
    sql: ${TABLE}.FA_EXTENDED_FRAUD_ALERT ;;
    group_label:"Fraud Alert - Feature Type"
  }

  measure: fa_active_duty {
    description: "Active duty"
    label: "Active duty"
    type: sum
    sql: ${TABLE}.FA_ACTIVE_DUTY ;;
    group_label:"Fraud Alert - Feature Type"
  }

  measure: fa_initial_one_year {
    description: "Initial one year"
    label: "Initial one year"
    type: sum
    sql: ${TABLE}.FA_INITIAL_ONE_YEAR ;;
    group_label:"Fraud Alert - Feature Type"
  }

  measure: fa_no_fraud_alert {
    description: "No fraud alert"
    label: "No fraud alert"
    type: sum
    sql: ${TABLE}.FA_NO_FRAUD_ALERT ;;
    group_label:"Fraud Alert - Feature Type"
  }

  measure: fa_total_failures {
    description: "Total failures"
    label: "Total failures"
    type: sum
    sql: ${TABLE}.FA_TOTAL_FAILURES ;;
    group_label:"Fraud Alert - Feature Type"
  }

  #----------------------------------------------------------------------------#
  # Security Freeze

  measure: sf_couldnot_find_eligibility_status {
    description: "Could not find eligibility status"
    label: "Could not find eligibility status"
    group_label: "Security Freeze - Failure Reason"
    type: sum
    sql: ${TABLE}.SF_COULDNOT_FIND_ELIGIBILITY_STATUS ;;
  }

  measure: sf_no_status {
    description: "No status"
    label: "No status"
    group_label: "Security Freeze - Failure Reason"
    type: sum
    sql: ${TABLE}.SF_NO_STATUS ;;
  }

  measure: sf_frozen {
    description: "Frozen"
    label: "Frozen"
    group_label: "Security Freeze - Feature Status"
    type: sum
    sql: ${TABLE}.SF_FROZEN ;;
  }

  measure: sf_locked {
    description: "Locked"
    label: "Locked"
    group_label: "Security Freeze - Feature Status"
    type: sum
    sql: ${TABLE}.SF_LOCKED ;;
  }

  measure: sf_unlocked {
    description: "Unlocked"
    label: "Unlocked"
    group_label: "Security Freeze - Feature Status"
    type: sum
    sql: ${TABLE}.SF_UNLOCKED ;;
  }

}
