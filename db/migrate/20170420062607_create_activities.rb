class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.references :category, foreign_key: true
      t.belongs_to :offering, index: true
      t.timestamps
    end
  end
end
