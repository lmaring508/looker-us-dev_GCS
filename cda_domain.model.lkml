connection: "edh-gcs-cda-us-conn"

include: "/common_filter_date/filter_date_to_extend.view.lkml"
include: "/cda_domain/gcs_blc_curr_product_bundle.view.lkml"
include: "/cda_domain/gcs_blc_curr_product_feature.view.lkml"
include: "/cda_domain/gcs_blc_curr_order.view.lkml"
include: "/cda_domain/gcs_blc_curr_order_item.view.lkml"
include: "/cda_domain/gcs_blc_curr_order_and_order_item.view.lkml"
include: "/cda_domain/gcs_curr_product_feature_enrollment.view.lkml"
include: "/customer_domain/customer_domain.view.lkml"
include: "/feature_engmt_user_event/feature_engmt_user_event.view.lkml"
include: "/feature_engmt_user_event/dashboards/*"
include: "/authentication_user_event/authentication_user_event.view.lkml"
include: "/authentication_user_event/authentication_user_event_to_extend.view.lkml"
include: "/authentication_user_event/dashboards/*.dashboard.lookml"


access_grant: cda_us_can_see_pii {
  user_attribute: cda_us_can_see_pii
  allowed_values: ["Yes"]
}

explore: gcs_cda_blc_curr_order {
  label: "Product & Orders"
  description: "Product & Orders"
  view_label: "BLC - Order"
  group_label: "CDA Domain"

  join: gcs_cda_blc_curr_order_item {
    view_label: "BLC - Order Item"
    relationship: one_to_many
    type: inner
    sql_on: ${gcs_cda_blc_curr_order.order_id} = ${gcs_cda_blc_curr_order_item.order_id};;
  }

  join: gcs_blc_curr_product_bundle {
    view_label: "BLC - Product Bundle"
    relationship: one_to_one
    type: inner
    sql_on: ${gcs_cda_blc_curr_order_item.sku_id} = ${gcs_blc_curr_product_bundle.sku_id}
      and ${gcs_cda_blc_curr_order_item.product_id} = ${gcs_blc_curr_product_bundle.product_id} ;;
  }

  join: gcs_blc_curr_product_feature {
    view_label: "BLC - Product Feature"
    relationship: many_to_many
    type:  inner
    sql_on: ${gcs_blc_curr_product_bundle.sku_id} = ${gcs_blc_curr_product_feature.product_bundle_sku_id}
      and ${gcs_blc_curr_product_bundle.product_id} = ${gcs_blc_curr_product_feature.product_bundle_id} ;;
  }

  join: customer_domain {
    view_label: "Customer"
    relationship: many_to_one
    type:  inner
    sql_on: ${gcs_cda_blc_curr_order.customer_key} = ${customer_domain.customer_key} ;;
  }

}

#----------------------------------------------------------------------------------------------------

#explore: gcs_cda_blc_curr_order2 {
#  view_name: gcs_cda_blc_curr_order
#  label: "Feature Enrollment"
#  description: "Feature Enrollment"
#  view_label: "BLC - Order"
#  group_label: "CDA Domain"
#
#  join:  gcs_curr_product_feature_enrollment {
#    view_label: "BLC - Feature Enrollment"
#    relationship: one_to_many
#    type: inner
#    sql_on: ${gcs_cda_blc_curr_order.order_id} = ${gcs_curr_product_feature_enrollment.order_id};;
#  }
#
#  join: gcs_blc_curr_product_bundle {
#    view_label: "BLC - Product Bundle"
#    relationship: one_to_one
#    type: inner
#    sql_on: ${gcs_curr_product_feature_enrollment.product_bundle_id} = ${gcs_blc_curr_product_bundle.product_id} ;;
#  }
#
#  join: gcs_blc_curr_product_feature {
#    view_label: "BLC - Product Feature"
#    relationship: many_to_many
#    type:  inner
#    sql_on: ${gcs_blc_curr_product_bundle.sku_id} = ${gcs_blc_curr_product_feature.product_bundle_sku_id}
#      and ${gcs_blc_curr_product_bundle.product_id} = ${gcs_blc_curr_product_feature.product_bundle_id} ;;
#  }
#
#  join: customer_domain {
#    view_label: "Customer"
#    relationship: many_to_one
#    type:  inner
#    sql_on: ${gcs_cda_blc_curr_order.customer_key} = ${customer_domain.customer_key} ;;
#  }
#
#}
#



explore:  gcs_curr_product_feature_enrollment {
  view_label: "BLC - Feature Enrollment"
  label: "Feature Enrollment"
  group_label: "CDA Domain"



  join: customer_domain {
    view_label: "Customer"
    relationship: many_to_one
    type:  left_outer
    sql_on: ${gcs_curr_product_feature_enrollment.customer_key} = ${customer_domain.customer_key} ;;
  }

}



explore: feature_engmt_user_event {
  label: "Regulated services"
  group_label: "CDA Domain"
  description: "general behaviour"
  view_name: feature_engmt_user_event
  always_filter: {
    filters: [feature_engmt_user_event.filter_on_date: "1 day ago"]
  }

  join: customer_domain {
    view_label: "Customer"
    relationship: many_to_one
    type:  inner
    sql_on: ${feature_engmt_user_event.customer_key} = ${customer_domain.customer_key} ;;
  }

}

explore: authentication_user_event{
  description: "Customer Authentication metrics"
  group_label: "CDA Domain"
  label: "Customer Authentication"
  view_name: authentication_user_event
  always_filter: {
    filters: [authentication_user_event.filter_on_date: "7 days"]
  }

  join: customer_domain {
    view_label: "Customer"
    relationship: one_to_one
    type:  inner
    sql_on: ${authentication_user_event.customer_key} = ${customer_domain.customer_key} ;;
  }
}


explore: customer_domain {
  label: "Customer"
  group_label: "CDA Domain"
  description: "Customer"
  view_name: customer_domain
}
