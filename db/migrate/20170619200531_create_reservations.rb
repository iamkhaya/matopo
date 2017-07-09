class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :offering
      t.datetime :booking_date
      t.time :start_time
      t.time :end_time
      t.string :status
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
