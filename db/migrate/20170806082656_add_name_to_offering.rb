class AddNameToOffering < ActiveRecord::Migration[5.0]
  def change
     add_column :offerings, :name, :string
  end
end
