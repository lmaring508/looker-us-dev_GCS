  view: gcs_cda_blc_curr_order {
    sql_table_name: `gcs_cda_us_rpt_views.gcs_blc_curr_order`;;


  dimension: order_id {
    type: number
    primary_key:  yes
    sql: ${TABLE}.order_id ;;
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
    sql:cast(${TABLE}.primary_modify_dttm as timestamp) ;;
  }

  dimension: ord_src_created_by {
    type: number
    sql: ${TABLE}.ord_src_created_by ;;
  }

  dimension_group: ord_src_created_dttm {
     type: time
    sql: cast(${TABLE}.ord_src_created_dttm as timestamp) ;;
  }

  dimension: ord_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.ord_src_created_dttm_utc as timestamp) ;;
  }

  dimension_group: ord_src_updated_dttm {
    type: time
    sql: cast(${TABLE}.ord_src_updated_dttm as timestamp) ;;
  }

  dimension: ord_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.ord_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: ord_src_updated_by {
    type: number
    sql: ${TABLE}.ord_src_updated_by ;;
  }

  dimension: is_secondary {
    type: yesno
    sql: ${TABLE}.is_secondary ;;
  }

  dimension: acknowledged {
    type: yesno
    sql: ${TABLE}.acknowledged ;;
  }

  dimension: cancellation_reason_type {
    type: string
    sql: ${TABLE}.cancellation_reason_type ;;
  }

  dimension: change_order_status {
    type: string
    sql: ${TABLE}.change_order_status ;;
  }

  dimension: orig_order_number {
    type: string
    sql: ${TABLE}.orig_order_number ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }

  dimension: is_preview {
    type: yesno
    sql: ${TABLE}.is_preview ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: order_subtotal {
    type: number
    sql: ${TABLE}.order_subtotal ;;
    hidden: yes
  }

  dimension: submit_date {
    type: date
    sql: cast(${TABLE}.submit_date as timestamp) ;;
  }

  dimension: tax_override {
    type: yesno
    sql: ${TABLE}.tax_override ;;
  }

  dimension: order_total {
    type: number
    sql: ${TABLE}.order_total ;;
    hidden:  yes
  }

  dimension: total_shipping {
    type: number
    sql: ${TABLE}.total_shipping ;;
    hidden:  yes
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
    hidden:  yes
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}.customer_key ;;
  }

  dimension: consumer_file_id {
    type: string
    sql: ${TABLE}.consumer_file_id ;;
  }

  dimension: idp_status {
    type: string
    sql: ${TABLE}.idp_status ;;
  }

  dimension: parent_order_id {
    type: number
    sql: ${TABLE}.parent_order_id ;;
  }

  dimension: locale_code {
    type: string
    sql: ${TABLE}.locale_code ;;
  }

  dimension: legacy_order_number {
    type: string
    sql: ${TABLE}.legacy_order_number ;;
  }

  dimension_group: activated_dttm {
    type: time
    sql: cast(${TABLE}.activated_dttm as timestamp) ;;
  }

  dimension_group: cancelled_dttm {
    type: time
    sql: cast(${TABLE}.cancelled_dttm as timestamp) ;;
  }

  dimension: offer_code_id {
    type: number
    sql: ${TABLE}.offer_code_id ;;
  }

  dimension: order_adjustment_id {
    type: number
    sql: ${TABLE}.order_adjustment_id ;;
  }

  dimension: adjustment_reason {
    type: string
    sql: ${TABLE}.adjustment_reason ;;
  }

  dimension: adjustment_value {
    type: number
    sql: ${TABLE}.adjustment_value ;;
    hidden:  yes
  }

  dimension: ord_adj_offer_id {
    type: number
    sql: ${TABLE}.ord_adj_offer_id ;;
  }

  dimension: ord_adj_src_created_dttm {
    type: date
    sql: cast(${TABLE}.ord_adj_src_created_dttm as timestamp) ;;
  }

  dimension: ord_adj_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.ord_adj_src_created_dttm_utc as timestamp) ;;
  }

  dimension: ord_adj_src_created_by {
    type: number
    sql: ${TABLE}.ord_adj_src_created_by ;;
  }

  dimension: ord_adj_src_updated_dttm {
    type: date
    sql: cast(${TABLE}.ord_adj_src_updated_dttm as timestamp) ;;
  }

  dimension: ord_adj_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.ord_adj_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: ord_adj_src_updated_by {
    type: number
    sql: ${TABLE}.ord_adj_src_updated_by ;;
  }

  dimension: order_channel {
    type: string
    sql: ${TABLE}.order_channel ;;
  }

  dimension: error_category {
    type: string
    sql: ${TABLE}.error_category ;;
  }

  dimension: order_status_error_code {
    type: string
    sql: ${TABLE}.order_status_error_code ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.reason_code ;;
  }

  dimension: reason_comment {
    type: string
    sql: ${TABLE}.reason_comment ;;
  }

  dimension: agent_id {
    type: number
    sql: ${TABLE}.agent_id ;;
  }

  dimension: ord_attr_src_created_dttm {
    type: date
    sql: cast(${TABLE}.ord_attr_src_created_dttm as timestamp) ;;
  }

  dimension: ord_attr_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.ord_attr_src_created_dttm_utc as timestamp) ;;
  }

  dimension: ord_attr_src_created_by {
    type: number
    sql: cast(${TABLE}.ord_attr_src_created_by as timestamp) ;;
  }

  dimension: ord_attr_src_updated_dttm {
    type: date
    sql: cast(${TABLE}.ord_attr_src_updated_dttm as timestamp) ;;
  }

  dimension: ord_attr_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.ord_attr_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: ord_attr_src_updated_by {
    type: number
    sql: ${TABLE}.ord_attr_src_updated_by ;;
  }

  dimension: offer_cd_archived {
    type: string
    sql: ${TABLE}.offer_cd_archived ;;
  }

  dimension: offer_cd_src_created_by {
    type: number
    sql: ${TABLE}.offer_cd_src_created_by ;;
  }

  dimension: offer_cd_src_created_dttm {
    type: date
    sql: cast(${TABLE}.offer_cd_src_created_dttm as timestamp) ;;
  }

  dimension: offer_cd_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.offer_cd_src_created_dttm_utc as timestamp) ;;
  }

  dimension: offer_cd_src_updated_dttm {
    type: date
    sql: cast(${TABLE}.offer_cd_src_updated_dttm as timestamp) ;;
  }

  dimension: offer_cd_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.offer_cd_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: offer_cd_src_updated_by {
    type: number
    sql: ${TABLE}.offer_cd_src_updated_by ;;
  }

  dimension: offer_cd_email_address {
    type: string
    sql: ${TABLE}.offer_cd_email_address ;;
  }

  dimension: admin_addition_status {
    type: string
    sql: ${TABLE}.admin_addition_status ;;
  }

  dimension: catalog_disc {
    type: string
    sql: ${TABLE}.catalog_disc ;;
  }

  dimension: max_uses {
    type: string
    sql: ${TABLE}.max_uses ;;
  }

  dimension: offer_code {
    type: string
    sql: ${TABLE}.offer_code ;;
  }

  dimension: offer_cd_end_date {
    type: date
    sql: cast(${TABLE}.offer_cd_end_date as timestamp) ;;
  }

  dimension: offer_cd_start_date {
    type: date
    sql: cast(${TABLE}.offer_cd_start_date as timestamp) ;;
  }

  dimension: uses {
    type: string
    sql: ${TABLE}.uses ;;
  }

  dimension: code_gen_id {
    type: number
    sql: ${TABLE}.code_gen_id ;;
  }

  dimension: offer_cd_offer_id {
    type: number
    sql: ${TABLE}.offer_cd_offer_id ;;
  }

  dimension: exchange_order_number {
    type: string
    sql: ${TABLE}.exchange_order_number ;;
  }

  dimension: exchange_order_id {
    type: number
    sql: ${TABLE}.exchange_order_id ;;
  }

  dimension_group: exchange_dttm {
    type: time
    sql: cast(${TABLE}.exchange_dttm as timestamp) ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }

  dimension: deal_id {
    type: number
    sql: ${TABLE}.deal_id ;;
  }

  dimension: order_attribution {
    type: string
    sql: ${TABLE}.order_attribution ;;
  }

  dimension: promo_code {
    type: string
    sql: ${TABLE}.promo_code ;;
  }

  dimension: campaign_source_code {
    type: string
    sql: ${TABLE}.campaign_source_code ;;
  }

#-----------------------------------------------------------------------------------
  measure: order_subtotal_sum {
   type: sum
   sql: ${TABLE}.order_subtotal ;;
  }

  measure: order_subtotal_avg {
   type: average
   sql: ${TABLE}.order_subtotal ;;
  }

  measure: order_subtotal_median {
   type: median
   sql: ${TABLE}.order_subtotal ;;
  }

  measure: order_total_sum {
    type: sum
    sql: ${TABLE}.order_total ;;
  }

  measure: order_total_avg {
    type: average
    sql: ${TABLE}.order_total ;;
  }

  measure: order_total_median {
    type: median
    sql: ${TABLE}.order_total ;;
  }

  measure: total_shipping_sum {
    type: sum
    sql: ${TABLE}.total_shipping ;;
  }

  measure: total_shipping_avg {
    type: average
    sql: ${TABLE}.total_shipping ;;
  }

  measure: total_shipping_median {
    type: median
    sql: ${TABLE}.total_shipping ;;
  }

  measure: total_tax_sum {
    type: sum
    sql: ${TABLE}.total_tax ;;
  }

  measure: total_tax_avg {
    type: average
    sql: ${TABLE}.total_tax ;;
  }

  measure: total_tax_median {
    type: median
    sql: ${TABLE}.total_tax ;;
  }

  measure: adjustment_value_sum {
    type: sum
    sql: ${TABLE}.adjustment_value ;;
  }

  measure: adjustment_value_avg {
    type: average
    sql: ${TABLE}.adjustment_value ;;
  }

  measure: adjustment_value_median {
    type: median
    sql: ${TABLE}.adjustment_value ;;
  }

}
