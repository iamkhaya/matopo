ActiveAdmin.register Reservation do
  permit_params :booking_date,
                :start_time,
                :end_time,
                :status,
                :user_id,
                :exclusions,
                :inclusions,
                :offering_id
end
