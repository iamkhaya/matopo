class CreateActivityAndCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :activities_categories, id: false do |t|
      t.belongs_to :activity, index: true
      t.belongs_to :category, index: true
    end
  end
end
