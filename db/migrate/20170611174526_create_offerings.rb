class CreateOfferings < ActiveRecord::Migration[5.0]
  def change
    create_table :offerings do |t|
      t.string :activity
      t.text :description
      t.string :place
      t.string :pricingperperson
      t.string :inclusions
      t.string :exclusions
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
