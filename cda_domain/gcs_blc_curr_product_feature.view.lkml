  view: gcs_blc_curr_product_feature {
    sql_table_name: `gcs_cda_us_rpt_views.gcs_blc_curr_product_feature`;;


  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${TABLE}.product_bundle_id, '_', ${TABLE}.product_feature_id, '_', ${TABLE}.product_bundle_sku_id, '_', ${TABLE}.product_feature_sku_id) ;;
    hidden:  yes
  }

  dimension: product_bundle_id {
    type: number
    sql: ${TABLE}.product_bundle_id ;;
  }

  dimension: product_feature_id {
    type: number
    sql: ${TABLE}.product_feature_id ;;
  }

  dimension: tenant {
    type: string
    sql: ${TABLE}.tenant ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }

  dimension: bu_region {
    type: string
    sql: ${TABLE}.bu_region ;;
  }

  dimension: product_bundle_name {
    type: string
    sql: ${TABLE}.product_bundle_name ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}.product_code ;;
  }

  dimension: product_bundle_sku_id {
    type: number
    sql: ${TABLE}.product_bundle_sku_id ;;
  }

  dimension: product_feature_name {
    type: string
    sql: ${TABLE}.product_feature_name ;;
  }

  dimension: product_feature_sku_id {
    type: number
    sql: ${TABLE}.product_feature_sku_id ;;
  }

  dimension_group: product_feature_activation_dttm {
    type: time
    sql: cast(${TABLE}.product_feature_activation_dttm as timestamp) ;;
  }

  dimension_group: product_feature_deactivation_dttm {
    type: time
    sql: cast(${TABLE}.product_feature_deactivation_dttm as timestamp) ;;
  }

  dimension: product_version {
    type: string
    sql: ${TABLE}.product_version ;;
  }

  dimension: product_feature_provisioning_method {
    type: string
    sql: ${TABLE}.product_feature_provisioning_method ;;
  }

  dimension: product_feature_fulfilment_cnt {
    type: number
    sql: ${TABLE}.product_feature_fulfilment_cnt ;;
  }

  dimension: product_feature_fulfilment_term {
    type: string
    sql: ${TABLE}.product_feature_fulfilment_term ;;
  }

  dimension: primary_modify_dttm {
    type: date
    sql: cast(${TABLE}.primary_modify_dttm as timestamp) ;;
  }

  dimension: sku_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.sku_src_created_dttm_utc as timestamp) ;;
  }


  dimension: sku_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.sku_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: prod_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.prod_src_created_dttm_utc as timestamp) ;;
  }

  dimension: prod_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.prod_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: prod_add_on_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.prod_add_on_src_created_dttm_utc as timestamp) ;;
  }

  dimension: prod_add_on_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.prod_add_on_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: prod_option_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.prod_option_src_created_dttm_utc as timestamp) ;;
  }

  dimension: prod_option_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.prod_option_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: sku_option_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.sku_option_src_created_dttm_utc as timestamp) ;;
  }

  dimension: sku_option_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.sku_option_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: partition_value {
    type: date
    sql: cast(${TABLE}.partition_value as timestamp) ;;
  }

}
