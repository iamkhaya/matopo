ActiveAdmin.register Provider do
  menu priority: 4
  actions :all
  filter :city
  filter :province
  filter :country
  permit_params :name, :email_1,
                :email_2, :phone_1,
                :phone_2, :tax_number,
                :street_number,
                :street_name_1, :city, :province,
                :country, :website
end
