ActiveAdmin.register Activity do
  permit_params :name, :description, category_ids: []
  form title: 'Create new Activity' do |f|
    inputs 'Activity Details' do
      input :name
      input :description
      input :categories
    end
    para 'Press cancel to return to the list without saving.'
    actions
  end
end
