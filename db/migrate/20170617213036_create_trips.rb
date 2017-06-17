class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.date :start_date
      t.date :end_date
      t.string :user_id
      t.integer :number_of_adults
      t.integer :number_of_infants
      t.integer :number_of_children
      t.string :city
      t.string :country
      t.string :region

      t.timestamps
    end
  end
end
