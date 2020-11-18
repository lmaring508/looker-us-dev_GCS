view: customer_domain {

 sql_table_name: `gcs_cda_us_rpt_views.gcs_customer_information`;;


  view_label: "Customer"


  dimension: tenant_key {
    type: string
    sql: ${TABLE}.tenantKey ;;
  }

  dimension: partner_key {
    type: string
    sql: ${TABLE}.partnerKey ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}.customerKey ;;
  }

  dimension: customer_subject_key {
    type: string
    sql: ${TABLE}.customerSubjectKey ;;
  }

  dimension: customer_account_key {
    type: string
    sql: ${TABLE}.customerAccountKey ;;
  }

  dimension: indirect_enrollment_id {
    type: string
    sql: ${TABLE}.indirectEnrollmentId ;;
  }

  dimension: idp_status {
    type: string
    sql: ${TABLE}.idpStatus ;;
  }

  dimension: modified_date {
    type: string
    sql: ${TABLE}.modifiedDate ;;
  }

  dimension: created_date {
    type: string
    sql: ${TABLE}.createdDate ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transactionId ;;
  }

  dimension: source_type {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.sourceType ;;
  }

  dimension: customer_subject_status {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.customerSubjectStatus ;;
  }

  dimension: document_id {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.documentId ;;
  }

  dimension: first_name {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: last_name {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: ssn {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.ssn ;;
  }

  dimension: date_of_birth {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.dateOfBirth ;;
  }

  dimension: email_address {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.emailAddress ;;
  }

  dimension: gender {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: enrolled_by_agent {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.enrolledByAgent ;;
  }

  dimension: agent_id {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.agentId ;;
  }

  dimension: user_type {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.userType ;;
  }

  dimension: address_key {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.addressKey ;;
  }

  dimension: address_line1 {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.addressLine1 ;;
  }

  dimension: city {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: country {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: zipCode {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.zipCode ;;
  }

  dimension: address_type {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.addressType ;;
  }

  dimension: phone_key {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.phoneKey ;;
  }

  dimension: phone_number {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.phoneNumber ;;
  }

  dimension: preferredphone {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.preferredphone ;;
  }

  dimension: phone_type {
    required_access_grants: [cda_us_can_see_pii]
    type: string
    sql: ${TABLE}.phoneType ;;
  }

  set: detail {
    fields: [
      tenant_key,
      partner_key,
      customer_key,
      customer_subject_key,
      customer_account_key,
      indirect_enrollment_id,
      idp_status,
      modified_date,
      created_date,
      transaction_id,
      source_type,
      customer_subject_status,
      document_id,
      first_name,
      last_name,
      ssn,
      date_of_birth,
      email_address,
      gender,
      enrolled_by_agent,
      agent_id,
      user_type,
      address_key,
      address_line1,
      city,
      state,
      country,
      address_type,
      phone_key,
      phone_number,
      preferredphone,
      phone_type
    ]
  }
}
