ActiveAdmin.register Category do
  menu priority: 3
  actions :all
  filter :name
  filter :description
  scope :all
  permit_params :name, :description, :category
end
