  view: gcs_blc_curr_product_bundle {
    sql_table_name: `gcs_cda_us_rpt_views.gcs_blc_curr_product_bundle`;;


  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${TABLE}.product_id, '_', ${TABLE}.sku_id) ;;
    hidden: yes
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: sku_id {
    type: number
    sql: ${TABLE}.sku_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: bu_region {
    type: string
    sql: ${TABLE}.bu_region ;;
  }

  dimension: tenant {
    type: string
    sql: ${TABLE}.tenant ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }

  dimension: primary_modify_dttm {
    type: date
    sql: cast(${TABLE}.primary_modify_dttm as timestamp) ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}.product_code ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}.product_line ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.product_description ;;
  }

  dimension: delivery_channel {
    type: string
    sql: ${TABLE}.delivery_channel ;;
  }

  dimension: billing_frequency {
    type: string
    sql: ${TABLE}.billing_frequency ;;
  }

  dimension_group: product_bundle_deactivation_dttm {
    type: time
    sql: cast(${TABLE}.product_bundle_deactivation_dttm as timestamp) ;;
  }

  dimension_group: product_bundle_activation_dttm {
    type: time
    sql: cast(${TABLE}.product_bundle_activation_dttm as timestamp) ;;
  }

  dimension: sku_archived {
    type: string
    sql: ${TABLE}.sku_archived ;;
  }

  dimension: sku_src_created_by {
    type: number
    sql: ${TABLE}.sku_src_created_by ;;
  }

  dimension: sku_src_created_dttm {
    type: date
    sql: cast(${TABLE}.sku_src_created_dttm as timestamp) ;;
  }

  dimension: sku_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.sku_src_created_dttm_utc as timestamp) ;;
  }

  dimension: sku_src_updated_dttm {
    type: date
    sql: cast(${TABLE}.sku_src_updated_dttm as timestamp) ;;
  }

  dimension: sku_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.sku_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: sku_src_updated_by {
    type: number
    sql: ${TABLE}.sku_src_updated_by ;;
  }

  dimension: discountable_flag {
    type: string
    sql: ${TABLE}.discountable_flag ;;
  }

  dimension: sku_catalog_disc {
    type: string
    sql: ${TABLE}.sku_catalog_disc ;;
  }

  dimension: is_future_start_date {
    type: yesno
    sql: ${TABLE}.is_future_start_date;;
  }

  dimension: is_subscription {
    type: yesno
    sql: ${TABLE}.is_subscription;;
  }

  dimension: is_trial {
    type: yesno
    sql: ${TABLE}.is_trial ;;
  }

  dimension: trial_period_days {
    type: string
    sql: ${TABLE}.trial_period_days ;;
  }

  dimension: fulfillment_type {
    type: string
    sql: ${TABLE}.fulfillment_type ;;
  }

  dimension: long_description {
    type: string
    sql: ${TABLE}.long_description ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
    hidden:  yes
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
    hidden: yes
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: default_product_id {
    type: number
    sql: ${TABLE}.default_product_id ;;
  }

  dimension: paid_subscription_sku_id {
    type: number
    sql: ${TABLE}.paid_subscription_sku_id ;;
  }

  dimension: addl_product_id {
    type: number
    sql: ${TABLE}.addl_product_id ;;
  }

  dimension: prod_archived {
    type: string
    sql: ${TABLE}.prod_archived ;;
  }

  dimension: prod_src_created_by {
     type: number
    sql: ${TABLE}.prod_src_created_by ;;
  }

 dimension: prod_src_created_dttm {
   type: date
   sql: cast(${TABLE}.prod_src_created_dttm as timestamp) ;;
 }

 dimension: prod_src_created_dttm_utc {
   type: date
   sql: cast(${TABLE}.prod_src_created_dttm_utc as timestamp) ;;
 }

 dimension: prod_src_updated_dttm {
   type: date
   sql: cast(${TABLE}.prod_src_updated_dttm  as timestamp) ;;
 }

 dimension: prod_src_updated_dttm_utc {
   type: date
   sql: cast(${TABLE}.prod_src_updated_dttm_utc  as timestamp) ;;
 }

 dimension: prod_src_updated_by {
   type: number
   sql: ${TABLE}.prod_src_updated_by ;;
 }

 dimension: can_sell_without_options {
   type: yesno
   sql: ${TABLE}.can_sell_without_options;;
 }

 dimension: prod_admin_addition_status {
   type: string
   sql: ${TABLE}.prod_admin_addition_status ;;
 }

 dimension: has_child_add_ons {
   type: yesno
   sql: ${TABLE}.has_child_add_ons ;;
 }

 dimension: prod_catalog_disc {
   type: string
   sql: ${TABLE}.prod_catalog_disc ;;
 }

 dimension: upgrade_family_type {
   type: string
   sql: ${TABLE}.upgrade_family_type ;;
 }

 dimension: upgradeable {
   type: yesno
   sql: ${TABLE}.upgradeable ;;
 }

 dimension: is_featured_product {
   type: yesno
   sql: ${TABLE}.is_featured_product ;;
 }

 dimension: url {
   type: string
   sql: ${TABLE}.url ;;
 }

 dimension: default_sku_id {
   type: number
   sql: ${TABLE}.default_sku_id ;;
 }

 dimension: efx_prod_src_created_dttm {
   type: date
   sql: cast(${TABLE}.efx_prod_src_created_dttm  as timestamp) ;;
 }

 dimension: product_bundle_creation_dttm {
   type: date
   sql: cast(${TABLE}.product_bundle_creation_dttm as timestamp) ;;
 }

  dimension: efx_prod_src_created_by {
   type: number
   sql: ${TABLE}.efx_prod_src_created_by ;;
 }

 dimension: efx_prod_src_updated_dttm {
   type: date
   sql: cast(${TABLE}.efx_prod_src_updated_dttm as timestamp) ;;
 }

 dimension: efx_prod_src_updated_dttm_utc {
   type: date
   sql: cast(${TABLE}.efx_prod_src_updated_dttm_utc as timestamp) ;;
 }

 dimension: efx_prod_src_updated_by {
   type: number
   sql: ${TABLE}.efx_prod_src_updated_by ;;
 }

 dimension: retry_eligible {
   type: yesno
   sql: ${TABLE}.retry_eligible ;;
 }

 dimension: retry_frequency {
   type: number
   sql: ${TABLE}.retry_frequency ;;
 }

 dimension: retry_failure_status {
   type: string
   sql: ${TABLE}.retry_failure_status ;;
 }

#-----------------------------------------------------------------------------------
 measure: retail_price_sum {
   type: sum
   sql: ${TABLE}.retail_price ;;
 }

 measure: retail_price_avg {
   type: average
   sql: ${TABLE}.retail_price ;;
 }

 measure: sale_price_sum {
   type: sum
   sql: ${TABLE}.retail_price ;;
 }

 measure: sale_price_avg {
   type: average
   sql: ${TABLE}.retail_price ;;
 }

}
