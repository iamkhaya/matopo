class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :email_1
      t.string :email_2
      t.integer :phone_1
      t.integer :phone_2
      t.integer :tax_number
      t.integer :street_number
      t.string :street_name_1
      t.string :city
      t.string :province
      t.string :country
      t.string :website

      t.timestamps
    end
  end
end
