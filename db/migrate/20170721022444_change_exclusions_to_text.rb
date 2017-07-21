class ChangeExclusionsToText < ActiveRecord::Migration[5.0]
  def change
    change_column :offerings, :exclusions, :text
  end
end
