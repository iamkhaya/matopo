class AddActivitytoOffering < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :activities, :offerings, on_delete: :cascade
  end
end
