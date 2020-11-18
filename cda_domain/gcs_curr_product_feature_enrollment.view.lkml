  view: gcs_curr_product_feature_enrollment {
    sql_table_name: `gcs_cda_us_rpt_views.gcs_curr_product_feature_enrollment`;;

    dimension: primary_key {
      primary_key: yes
      sql: CONCAT(${TABLE}.session_id, '_', ${TABLE}.indirect_enrollment_id) ;;
      hidden: yes
    }


 dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}.customer_key ;;
  }

  dimension: feature_enrollment_id {
    type: number
    sql: ${TABLE}.feature_enrollment_id ;;
  }

  dimension: indirect_enrollment_id {
    type: number
    sql: ${TABLE}.indirect_enrollment_id ;;
  }

  dimension: partner_name {
    type: string
    sql: ${TABLE}.partner_name ;;
  }

  dimension: tenant_name {
    type: string
    sql: ${TABLE}.tenant_name ;;
  }

  dimension: product_feature_name {
    type: string
    sql: ${TABLE}.product_feature_name ;;
  }

  dimension: product_feature_status {
    type: string
    sql: ${TABLE}.product_feature_status ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_status {
    type: string
    sql: ${TABLE}.event_status ;;
  }

  dimension: failure_reason_msg {
    type: string
    sql: ${TABLE}.failure_reason_msg ;;
  }

  dimension: failure_reason {
    type: string
    sql: ${TABLE}.failure_reason ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: env {
    type: string
    sql: ${TABLE}.env ;;
  }

  dimension: transaction_time {
    type: number
    sql: ${TABLE}.transaction_time ;;
  }

  dimension: event_create_dttm {
    type: date
    sql: cast(${TABLE}.event_create_dttm as timestamp) ;;
  }

  dimension: event_modified_dttm {
    type: date
    sql: cast(${TABLE}.event_modified_dttm as timestamp) ;;
  }

  dimension: event_create_dttm_est {
    type: date
    sql: cast(${TABLE}.event_create_dttm_est as timestamp) ;;
  }

  dimension: event_modified_dttm_est {
    type: date
    sql: cast(${TABLE}.event_modified_dttm_est as timestamp) ;;
  }

  dimension: enrollment_id {
    type: number
    sql: ${TABLE}.enrollment_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: product_bundle_id {
    type: number
    sql: ${TABLE}.product_bundle_id ;;
  }

  dimension: product_feature_id {
    type: number
    sql: ${TABLE}.product_feature_id ;;
  }

  dimension: product_feature_activation_dttm {
    type: date
    sql: cast(${TABLE}.product_feature_activation_dttm as timestamp) ;;
  }

  dimension: product_feature_enrollment_dttm {
    type: date
    sql: cast(${TABLE}.product_feature_enrollment_dttm as timestamp) ;;
  }

  dimension: product_feature_cancellation_dttm {
    type: date
    sql: cast(${TABLE}.product_feature_cancellation_dttm as timestamp) ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: partner_id {
    type: number
    sql: ${TABLE}.partner_id ;;
  }

  dimension: cda_ingestion_time {
    type: date
    sql: cast(${TABLE}.cda_ingestion_time as timestamp) ;;
  }

}
