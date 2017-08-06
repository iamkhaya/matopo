class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.datetime :booking_date
      t.time :start_time
      t.time :end_time
      t.string :status
      t.belongs_to :trip, index: true
      t.belongs_to :offering, index: true

      t.timestamps
    end
  end
end
