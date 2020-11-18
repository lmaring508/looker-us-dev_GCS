view: gcs_cda_blc_curr_order_orderitem {
  sql_table_name: `gcs_cda_us_rpt_views.gcs_cda_blc_curr_order_orderitem`;;


dimension: primary_key {
  primary_key: yes
  sql: CONCAT(${TABLE}.order_item_id, '_', ${TABLE}.order_id, '_', ${TABLE}.product_id, '_', ${TABLE}.sku_id, '_', ${TABLE}.consumer_id) ;;
  hidden:  yes
}

dimension: order_item_id {
  type: number
  sql: ${TABLE}.order_item_id ;;
}

dimension: order_id {
  type: number
  sql: ${TABLE}.order_id ;;
}

dimension: product_id {
  type: number
  sql: ${TABLE}.product_id ;;
}

dimension: sku_id {
  type: number
  sql: ${TABLE}.sku_id ;;
}

dimension: consumer_id {
  type: number
  sql: ${TABLE}.consumer_id ;;
}

dimension: consumer_key {
  type: string
  sql: ${TABLE}.consumer_key ;;
}

dimension: consumer_file_id {
  type: string
  sql: ${TABLE}.consumer_file_id ;;
}

dimension: exchange_order_id {
  type: number
  sql: ${TABLE}.exchange_order_id ;;
}

dimension: exchange_order_number {
  type: string
  sql: ${TABLE}.exchange_order_number ;;
}

dimension: idp_status {
  type: string
  sql: ${TABLE}.idp_status ;;
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

dimension: created_dttm {
  type: date
  sql: cast(${TABLE}.created_dttm as timestamp);;
}

dimension: batch_nbr {
  type: string
  sql: ${TABLE}.batch_nbr ;;
}

dimension: primary_modify_dttm {
  type: date
  sql: cast(${TABLE}.primary_modify_dttm as timestamp) ;;
}

dimension: order_item_name {
  type: string
  sql: ${TABLE}.order_item_name ;;
}

dimension: product_name {
  type: string
  sql: ${TABLE}.product_name ;;
}

dimension: exchange_product_name {
  type: string
  sql: ${TABLE}.exchange_product_name ;;
}

dimension: order_created_dttm {
  type: date
  sql: cast(${TABLE}.order_created_dttm as timestamp) ;;
}

dimension: order_start_dttm {
  type: date
  sql: cast(${TABLE}.order_start_dttm as timestamp) ;;
}

dimension: from_order_start_dttm {
  type: date
  sql: cast(${TABLE}.from_order_start_dttm as timestamp) ;;
}

dimension: order_end_dttm {
  type: date
  sql: cast(${TABLE}.order_end_dttm as timestamp) ;;
}

dimension: cancellation_rsn_cd {
  type: string
  sql: ${TABLE}.cancellation_rsn_cd ;;
}

dimension: cancellation_rsn_comment {
  type: string
  sql: ${TABLE}.cancellation_rsn_comment ;;
}

dimension: billing_start_dttm {
  type: date
  sql: cast(${TABLE}.billing_start_dttm as timestamp);;
}

dimension: billing_end_dttm {
  type: date
  sql: cast(${TABLE}.billing_end_dttm as timestamp);;
}

dimension: order_status {
  type: string
  sql: ${TABLE}.order_status ;;
}

dimension: order_nbr {
  type: string
  sql: ${TABLE}.order_nbr ;;
}

dimension: parent_order_id {
  type: number
  sql: ${TABLE}.parent_order_id ;;
}

dimension: parent_order_item_id {
  type: number
  sql: ${TABLE}.parent_order_item_id ;;
}

dimension: parent_or_child {
  type: string
  sql: ${TABLE}.parent_or_child ;;
}

dimension: product_line {
  type: string
  sql: ${TABLE}.product_line ;;
}

dimension: product_type {
  type: string
  sql: ${TABLE}.product_type ;;
}

dimension: product_cd {
  type: string
  sql: ${TABLE}.product_cd ;;
}

dimension: from_exchange_cd {
  type: string
  sql: ${TABLE}.from_exchange_cd ;;
}

dimension: part_nbr {
  type: string
  sql: ${TABLE}.part_nbr ;;
}

dimension: subscription_period {
  type: string
  sql: ${TABLE}.subscription_period ;;
}

dimension: order_channel {
  type: string
  sql: ${TABLE}.order_channel ;;
}

dimension: order_method {
  type: string
  sql: ${TABLE}.order_method ;;
}

dimension: offer_id {
  type: string
  sql: ${TABLE}.offer_id ;;
}

dimension: offer_code {
  type: string
  sql: ${TABLE}.offer_code ;;
}

dimension: promo_id {
  type: string
  sql: ${TABLE}.promo_id ;;
}

dimension: promo_code {
  type: string
  sql: ${TABLE}.promo_code ;;
}

dimension: campaign_src_id {
  type: string
  sql: ${TABLE}.campaign_src_id ;;
}

dimension: campaign_src_cd {
  type: string
  sql: ${TABLE}.campaign_src_cd ;;
}

dimension: trial_period {
  type: number
  sql: ${TABLE}.trial_period ;;
}

dimension: trial {
  type: yesno
  sql: ${TABLE}.trial ;;
}

dimension: trial_or_bill {
  type: string
  sql: ${TABLE}.trial_or_bill ;;
}

dimension: price {
  type: number
  sql: ${TABLE}.price ;;
  hidden: yes
}

dimension: retail_price {
  type: number
  sql: ${TABLE}.retail_price ;;
  hidden: yes
}

dimension: retail_price_override {
  type: yesno
  sql: ${TABLE}.retail_price_override ;;
}

dimension: sale_price {
  type: number
  sql: ${TABLE}.sale_price ;;
  hidden: yes
}

dimension: sale_price_override {
  type: yesno
  sql: ${TABLE}.sale_price_override ;;
}

dimension: exchange_dttm {
  type: date
  sql: cast(${TABLE}.exchange_dttm as timestamp) ;;
}

dimension: exchange_type {
  type: string
  sql: ${TABLE}.exchange_type ;;
}

dimension: exchange_by_pricing_dt {
  type: string
  sql: ${TABLE}.exchange_by_pricing_dt ;;
}

dimension: exchange_by_pricing_type {
  type: string
  sql: ${TABLE}.exchange_by_pricing_type ;;
}

dimension: insurance_policy_cd {
  type: string
  sql: ${TABLE}.insurance_policy_cd ;;
}

dimension: insurance_amt {
  type: number
  sql: ${TABLE}.insurance_amt ;;
  hidden: yes
}

dimension: partner_name {
  type: string
  sql: ${TABLE}.partner_name ;;
}

dimension: partner_type {
  type: string
  sql: ${TABLE}.partner_type ;;
}

dimension: order_item_status {
  type: string
  sql: ${TABLE}.order_item_status ;;
}

dimension: error_reason_code {
  type: string
  sql: ${TABLE}.error_reason_code ;;
}

dimension: legacy_order_number {
  type: string
  sql: ${TABLE}.legacy_order_number ;;
}

dimension: legacy_consumer_number {
  type: string
  sql: ${TABLE}.legacy_consumer_number ;;
}

dimension: actv_flg {
  type: number
  sql: ${TABLE}.actv_flg ;;
}

dimension: same_day_cancel {
  type: number
  sql: ${TABLE}.same_day_cancel ;;
}

dimension: 1d_to_7d_cancel {
  type: number
  sql: ${TABLE}.1d_to_7d_cancel ;;
}

dimension: 8d_to_14d_cancel {
  type: number
  sql: ${TABLE}.8d_to_14d_cancel ;;
}

dimension: 15d_to_30d_cancel {
  type: number
  sql: ${TABLE}.15d_to_30d_cancel ;;
}

dimension: 31d_to_60d_cancel {
  type: number
  sql: ${TABLE}.31d_to_60d_cancel ;;
}

dimension: 61d_to_90d_cancel {
  type: number
  sql: ${TABLE}.61d_to_90d_cancel ;;
}

dimension: 90d_to_120d_cancel {
  type: number
  sql: ${TABLE}.90d_to_120d_cancel ;;
}

dimension: 121d_to_1y_cancel {
  type: number
  sql: ${TABLE}.121d_to_1y_cancel ;;
}

dimension: 1y_to_2y_cancel {
  type: number
  sql: ${TABLE}.1y_to_2y_cancel ;;
}

dimension: 2plusyear_cancel {
  type: number
  sql: ${TABLE}.2plusyear_cancel ;;
}

dimension: ord_src_created_by {
  type: number
  sql: ${TABLE}.ord_src_created_by ;;
}

dimension: ord_src_created_dttm {
  type: date
  sql: cast(${TABLE}.ord_src_created_dttm as timestamp) ;;
}

dimension: ord_src_created_dttm_utc {
  type: date
  sql: cast(${TABLE}.ord_src_created_dttm_utc as timestamp) ;;
}

dimension: ord_src_updated_dttm {
  type: date
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

dimension: oi_src_created_by {
  type: number
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
  type: number
  sql: ${TABLE}.oi_src_updated_by ;;
}

dimension: dob {
  type: string
  sql: ${TABLE}.dob ;;
}

dimension: gender {
  type: string
  sql: ${TABLE}.gender ;;
}

dimension: addr_line1 {
  type: string
  sql: ${TABLE}.addr_line1 ;;
}

dimension: city {
  type: string
  sql: ${TABLE}.city ;;
}

dimension: state {
  type: string
  sql: ${TABLE}.state ;;
}

dimension: country {
  type: string
  sql: ${TABLE}.country ;;
}

dimension: zip {
  type: string
  sql: ${TABLE}.zip ;;
}

dimension: addr_type {
  type: string
  sql: ${TABLE}.addr_type ;;
}

dimension: email_addr {
  type: string
  sql: ${TABLE}.email_addr ;;
}

dimension: domain {
  type: string
  sql: ${TABLE}.domain ;;
}

dimension: age_0_18_yrs {
  type: number
  sql: ${TABLE}.age_0_18_yrs ;;
}

dimension: age_19_30_yrs {
  type: number
  sql: ${TABLE}.age_19_30_yrs ;;
}

dimension: age_31_50_yrs {
  type: number
  sql: ${TABLE}.age_31_50_yrs ;;
}

dimension: age_51_70_yrs {
  type: number
  sql: ${TABLE}.age_51_70_yrs ;;
}

dimension: age_70_plus_yrs {
  type: number
  sql: ${TABLE}.age_70_plus_yrs ;;
}

dimension: connexus_key {
  type: string
  sql: ${TABLE}.connexus_key ;;
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

measure: insurance_amt_sum  {
 type: sum
 sql: ${TABLE}.insurance_amt ;;
}

measure: insurance_amt_avg  {
 type: average
 sql: ${TABLE}.insurance_amt ;;
}

measure: insurance_amt_median  {
 type: median
 sql: ${TABLE}.insurance_amt ;;
}



}
