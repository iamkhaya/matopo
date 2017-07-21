class ChangeInclusionsToText < ActiveRecord::Migration[5.0]
  def change
    change_column :offerings, :inclusions, :text
  end
end
