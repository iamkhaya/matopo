class CreateOfferings < ActiveRecord::Migration[5.0]
  def change
    create_table :offerings do |t|
      t.text :description
      t.string :place
      t.string :pricingperperson
      t.string :inclusions
      t.string :exclusions
      t.belongs_to :provider, index: true
      t.belongs_to :activity, index: true
      t.timestamps
    end
  end
end
