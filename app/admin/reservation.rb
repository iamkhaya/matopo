ActiveAdmin.register Reservation do
    menu priority: 4
    actions :all
    filter :status
    filter :offering
    filter :user_id
    permit_params   :booking_date, :start_time,
                    :end_time, :status,
                    :user_id, :exclusions,
                    :inclusions, :offering,
                    :trip_id

end
