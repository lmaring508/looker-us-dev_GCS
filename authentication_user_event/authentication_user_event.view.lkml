include: "/authentication_user_event/authentication_user_event_to_extend.view.lkml"

view: authentication_user_event {
  extends: [authentication_user_event_to_extend]

  drill_fields: [detail*]

  view_label: "Authentication metrics"

  measure: registration {
    type: sum
    sql: ${pin_registration_cnt} ;;
    label: "Registration Attemptes"
    description: "Registration Attemptes"
    drill_fields: [detail*]
    }

  measure: eligible {
    type: sum
    sql: ${pin_eligible_cnt} ;;
    label: "Eligible"
    description: "Eligible"
    }

  measure: optedin {
    type: sum
    sql: ${pin_optedin_cnt} ;;
    label: "Opted in"
    description: "Opted in"
  }

  measure: attempted {
    type: sum
    sql: ${pin_attempted_cnt} ;;
    label: "Attempted"
    description: "Attempted"
    }

  measure: success_enrollment {
    type: sum
    sql: ${pin_success_enrollment_cnt} ;;
    label: "Successful "
    description: "Successful "
    }

  measure: failure_enrollment {
    type: sum
    sql: ${pin_failure_enrollment_cnt} ;;
    label: "Failed"
    description: "Failed"
    }

  measure: p2t_not_eligible {
    type: sum
    sql: ${p2t_not_eligible_cnt} ;;
    label: "P2T not eligible"
    description: "P2T not eligible"
    }

  measure: registration_percent {
    type: number
    sql: 100 ;;
    label: "% Registration Attemptes"
    description: "% Registration Attemptes"
  }

  measure: successful_percent{
    description: "% Successful"
    label: "% Successful"
    type:  number
    sql: case when ${registration} = 0 then 0 else (${success_enrollment}/${registration}) * 100 end;;
    value_format: "0.00"
    }

  measure: failed_percent{
    description: "% Failed"
    label: "% Failed"
    type:  number
    sql: case when ${registration} = 0 then 0 else (${failure_enrollment}/${registration}) * 100 end;;
    value_format: "0.00"
    }

  measure: opted_percent{
    description: "% Opted in"
    label: "% Opted in"
    type:  number
    sql: case when ${registration} = 0 then 0 else (${optedin}/${registration}) * 100 end;;
    value_format: "0.00"
  }

  measure: eligible_percent{
    description: "% Eligible"
    label: "% Eligible"
    type:  number
    sql: case when ${registration} = 0 then 0 else (${eligible}/${registration}) * 100 end;;
    value_format: "0.00"
  }

  measure: attempted_percent{
    description: "% Attempted"
    label: "% Attempted"
    type:  number
    sql: case when ${registration} = 0 then 0 else (${attempted}/${registration}) * 100 end;;
    value_format: "0.00"
  }

  measure: p2t_not_eligible_percent{
    description: "% P2T not eligible"
    label: "% P2T not eligible"
    type:  number
    sql: case when ${registration} = 0 then 0 else (${p2t_not_eligible}/${registration}) * 100 end;;
    value_format: "0.00"
  }

#       filter_on_date,

  set: detail {
    fields: [

       pin_type,

       attempted,
       eligible,
       failure_enrollment,
       optedin,
       success_enrollment,
       registration

    ]
  }

}
