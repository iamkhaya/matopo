ActiveAdmin.register Trip do
    menu priority: 3
    actions :all
    filter :name
    filter :city
    scope :all
    permit_params :start_date,
                  :end_date,
                  :user_id,
                  :number_of_adults,
                  :number_of_infants,
                  :number_of_children,
                  :city,
                  :region,
                  :country
end
