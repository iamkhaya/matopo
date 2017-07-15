ActiveAdmin.register Activity do
    menu priority: 3
    actions :all
    filter :name
    filter :description
    permit_params :name, :description, :category_id
end
