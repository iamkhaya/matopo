class AddAttachmentToOfferings < ActiveRecord::Migration[5.0]
  def change
    add_column :offerings, :attachment, :string
  end
end
