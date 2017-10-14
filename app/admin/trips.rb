ActiveAdmin.register Trip do
  permit_params :name,
                :start_date,
                :end_date,
                :user_id,
                :number_of_adults,
                :number_of_infants,
                :number_of_children,
                :city,
                :region,
                :country

  form title: 'Create new Trip' do |_f|
    inputs 'Trip Details' do
      input :name
      input :start_date, as: :datepicker,
                          datepicker_options: {
                            min_date: '2013-10-8',
                            max_date: '+3D'
                          }

      input :end_date, as: :datepicker,
                       datepicker_options: {
                         min_date: 3.days.ago.to_date,
                         max_date: '+1W +5D'
                       }
      input :user
      input :number_of_adults
      input :number_of_infants
      input :number_of_children
      input :city
      input :region
      input :country
    end
    para 'Press cancel to return to the list without saving.'
    actions
  end
end
