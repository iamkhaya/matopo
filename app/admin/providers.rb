ActiveAdmin.register Provider do
  permit_params :name,
                :email_1,
                :email_2,
                :phone_1,
                :phone_2,
                :tax_number,
                :street_number,
                :street_name_1,
                :city,
                :province,
                :country,
                :website
end
