view: gcs_cda_blc_curr_order_item {
  sql_table_name: `gcs_cda_us_rpt_views.gcs_cda_blc_curr_order_item`;;



  dimension: bu_region {
    type: string
    sql: ${TABLE}.bu_region ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: tenant_name {
    type: string
    sql: ${TABLE}.tenant_name ;;
  }

  dimension: partner_id {
    type: number
    sql: ${TABLE}.partner_id ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }

  dimension: order_item_id {
    type: number
    primary_key:  yes
    sql: ${TABLE}.order_item_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: sku_id {
    type: number
    sql: ${TABLE}.sku_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
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

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: date_created {
    type: time
    sql: cast(${TABLE}.date_created as timestamp) ;;
  }

  dimension_group: date_updated {
    type: time
    sql: cast(${TABLE}.date_updated as timestamp) ;;
  }

  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }

  dimension: discounts_allowed {
    type: yesno
    sql: ${TABLE}.discounts_allowed ;;
  }

  dimension: site_desc {
    type: string
    sql: ${TABLE}.site_desc ;;
  }

  dimension: item_taxable_flag {
    type: yesno
    sql: ${TABLE}.item_taxable_flag ;;
  }

  dimension: order_item_name {
    type: string
    sql: ${TABLE}.order_item_Name ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
    hidden:  yes
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
    hidden:  yes
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
    hidden:  yes
  }

  dimension: retail_price_override {
    type: yesno
    sql: ${TABLE}.retail_price_override ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
    hidden:  yes
  }

  dimension: sale_price_override {
    type: yesno
    sql: ${TABLE}.sale_price_override ;;
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
    hidden:  yes
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: parent_order_item_id {
    type: string
    sql: ${TABLE}.parent_order_item_id ;;
  }

  dimension: base_retail_price {
    type: number
    sql: ${TABLE}.base_retail_price ;;
    hidden:  yes
  }

  dimension: base_sale_price {
    type: number
    sql: ${TABLE}.base_sale_price ;;
    hidden:  yes
  }

  dimension: subscription_id {
    type: string
    sql: ${TABLE}.subscription_id ;;
  }

  dimension: fullfilment_group_item_id {
    type: string
    sql: ${TABLE}.fullfilment_group_item_id ;;
  }

  dimension: prorated_order_adj {
    type: number
    sql: ${TABLE}.prorated_order_adj ;;
    hidden:  yes
  }

  dimension: order_item_status {
    type: string
    sql: ${TABLE}.order_item_status ;;
  }

  dimension: total_item_amount {
    type: number
    sql: ${TABLE}.total_item_amount ;;
    hidden:  yes
  }

  dimension: total_item_taxable_amount {
    type: number
    sql: ${TABLE}.total_item_taxable_amount ;;
    hidden:  yes
  }

  dimension: total_item_tax {
    type: number
    sql: ${TABLE}.total_item_tax ;;
    hidden:  yes
  }

  dimension: fulfillment_group_id {
    type: string
    sql: ${TABLE}.fulfillment_group_id ;;
  }

  dimension: product_feature_code {
    type: string
    sql: ${TABLE}.product_feature_code ;;
  }

  dimension: product_feature_id {
    type: string
    sql: ${TABLE}.product_feature_id ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.reason_code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: order_item_key {
    type: string
    sql: ${TABLE}.order_item_key ;;
  }

  dimension: batch_nbr {
    type: string
    sql: ${TABLE}.batch_nbr ;;
  }

  dimension: oi_src_created_by {
    type: string
    sql: ${TABLE}.oi_src_created_by ;;
  }

  dimension: oi_src_created_dttm {
    type: date
    sql: cast(${TABLE}.oi_src_created_dttm as timestamp) ;;
  }

  dimension: oi_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.oi_src_created_dttm_utc as timestamp) ;;
  }

  dimension: oi_src_updated_dttm {
    type: date
    sql: cast(${TABLE}.oi_src_updated_dttm as timestamp) ;;
  }

  dimension: oi_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.oi_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: oi_src_updated_by {
    type: string
    sql: ${TABLE}.oi_src_updated_by ;;
  }

  dimension: retail_price_data_id {
    type: string
    sql: ${TABLE}.retail_price_data_id ;;
  }

  dimension: retail_price_list_id {
    type: string
    sql: ${TABLE}.retail_price_list_id ;;
  }

  dimension: sale_price_data_id {
    type: string
    sql: ${TABLE}.sale_price_data_id ;;
  }

  dimension: sale_price_list_id {
    type: string
    sql: ${TABLE}.sale_price_list_id ;;
  }

  dimension: site_disc {
    type: string
    sql: ${TABLE}.site_disc ;;
  }

  dimension: has_validation_errors {
    type: yesno
    sql: ${TABLE}.has_validation_errors ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: csr_details_id {
    type: number
    sql: ${TABLE}.csr_details_id ;;
  }

  dimension: gift_wrap_item_id {
    type: number
    sql: ${TABLE}.gift_wrap_item_id ;;
  }

  dimension: personal_message_id {
    type: number
    sql: ${TABLE}.personal_message_id ;;
  }

  dimension: doi_src_created_by {
    type: string
    sql: ${TABLE}.doi_src_created_by ;;
  }

  dimension: doi_src_created_dttm {
    type: date
    sql: cast(${TABLE}.doi_src_created_dttm as timestamp) ;;
  }

  dimension: doi_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.doi_src_created_dttm_utc as timestamp) ;;
  }

  dimension: doi_src_updated_dttm {
    type: date
    sql: cast(${TABLE}.doi_src_updated_dttm as timestamp) ;;
  }

  dimension: doi_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.doi_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: doi_src_updated_by {
    type: string
    sql: ${TABLE}.doi_src_updated_by ;;
  }

  dimension: bundle_order_item_id {
    type: number
    sql: ${TABLE}.bundle_order_item_id ;;
  }

  dimension: sku_bundle_item_id {
    type: number
    sql: ${TABLE}.sku_bundle_item_id ;;
  }

  dimension: fulfillment_group_item_id {
    type: number
    sql: ${TABLE}.fulfillment_group_item_id ;;
  }

  dimension: fulfilmnt_grp_itm_quantity {
    type: number
    sql: ${TABLE}.fulfilmnt_grp_itm_quantity ;;
    hidden:  yes
  }

  dimension: fulfilmnt_grp_itm_description {
    type: string
    sql: ${TABLE}.fulfilmnt_grp_itm_description ;;
  }

  dimension: fulfilmnt_grp_itm_src_created_dttm {
    type: date
    sql: cast(${TABLE}.fulfilmnt_grp_itm_src_created_dttm as timestamp) ;;
  }

  dimension: fulfilmnt_grp_itm_src_created_dttm_utc {
    type: date
    sql: cast(${TABLE}.fulfilmnt_grp_itm_src_created_dttm_utc as timestamp) ;;
  }

  dimension: fulfilmnt_grp_itm_src_created_by {
    type: string
    sql: ${TABLE}.fulfilmnt_grp_itm_src_created_by ;;
  }

  dimension: fulfilmnt_grp_itm_src_src_updated_dttm {
    type: date
    sql: cast(${TABLE}.fulfilmnt_grp_itm_src_src_updated_dttm as timestamp) ;;
  }

  dimension: fulfilmnt_grp_itm_src_src_updated_dttm_utc {
    type: date
    sql: cast(${TABLE}.fulfilmnt_grp_itm_src_src_updated_dttm_utc as timestamp) ;;
  }

  dimension: fulfilmnt_grp_itm_src_updated_by {
    type: string
    sql: ${TABLE}.fulfilmnt_grp_itm_src_updated_by ;;
  }

  dimension: partition_value {
    type: string
    sql: ${TABLE}.partition_value ;;
  }

#-----------------------------------------------------------------------------------
  measure: price_sum {
    type: sum
    sql: ${TABLE}.price ;;
  }

  measure: price_avg {
    type: average
    sql: ${TABLE}.price ;;
  }

  measure: price_median {
    type: median
    sql: ${TABLE}.price ;;
  }

  measure: quantity_sum  {
    type: sum
    sql: ${TABLE}.quantity ;;
  }

  measure: quantity_avg  {
    type: average
    sql: ${TABLE}.quantity ;;
  }

  measure: quantity_median  {
    type: median
    sql: ${TABLE}.quantity ;;
  }

  measure: retail_price_sum  {
    type: sum
    sql: ${TABLE}.retail_price ;;
  }

  measure: retail_price_avg  {
    type: average
    sql: ${TABLE}.retail_price ;;
  }

  measure: retail_price_median  {
    type: median
    sql: ${TABLE}.retail_price ;;
  }

  measure: sale_price_sum  {
    type: sum
    sql: ${TABLE}.sale_price ;;
  }

  measure: sale_price_avg  {
    type: average
    sql: ${TABLE}.sale_price ;;
  }

  measure: sale_price_median  {
    type: median
    sql: ${TABLE}.sale_price ;;
  }

  measure: total_tax_sum  {
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

  measure: base_retail_price_sum  {
    type: sum
    sql: ${TABLE}.base_retail_price ;;
  }

  measure: base_retail_price_avg {
    type: average
    sql: ${TABLE}.base_retail_price ;;
  }

  measure: base_retail_price_median {
    type: median
    sql: ${TABLE}.base_retail_price ;;
  }

  measure: base_sale_price_sum  {
    type: sum
    sql: ${TABLE}.base_sale_price ;;
  }

  measure: base_sale_price_avg  {
    type: average
    sql: ${TABLE}.base_sale_price ;;
  }

  measure: base_sale_price_median  {
    type: median
    sql: ${TABLE}.base_sale_price ;;
  }

  measure: total_item_amount_sum  {
    type: sum
    sql: ${TABLE}.total_item_amount ;;
  }

  measure: total_item_amount_avg  {
    type: average
    sql: ${TABLE}.total_item_amount ;;
  }

  measure: total_item_amount_median  {
    type: median
    sql: ${TABLE}.total_item_amount ;;
  }

  measure: total_item_taxable_amount_sum  {
    type: sum
    sql: ${TABLE}.total_item_taxable_amount ;;
  }

  measure: total_item_taxable_amount_avg  {
    type: average
    sql: ${TABLE}.total_item_taxable_amount ;;
  }

  measure: total_item_taxable_amount_median  {
    type: median
    sql: ${TABLE}.total_item_taxable_amount ;;
  }

  measure: total_item_tax_sum  {
    type: sum
    sql: ${TABLE}.total_item_tax ;;
  }

  measure: total_item_tax_avg  {
    type: average
    sql: ${TABLE}.total_item_tax ;;
  }

  measure: total_item_tax_median  {
    type: median
    sql: ${TABLE}.total_item_tax ;;
  }

  measure: prorated_order_adj_sum  {
    type: sum
    sql: ${TABLE}.prorated_order_adj ;;
  }

  measure: prorated_order_adj_avg  {
    type: average
    sql: ${TABLE}.prorated_order_adj ;;
  }

  measure: prorated_order_adj_median  {
    type: median
    sql: ${TABLE}.prorated_order_adj ;;
  }

  measure: fulfilmnt_grp_itm_quantity_sum  {
    type: sum
    sql: ${TABLE}.fulfilmnt_grp_itm_quantity ;;
  }

  measure: fulfilmnt_grp_itm_quantity_avg  {
    type: average
    sql: ${TABLE}.fulfilmnt_grp_itm_quantity ;;
  }

  measure: fulfilmnt_grp_itm_quantity_median  {
    type: median
    sql: ${TABLE}.fulfilmnt_grp_itm_quantity ;;
  }
}
