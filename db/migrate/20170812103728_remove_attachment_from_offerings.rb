class RemoveAttachmentFromOfferings < ActiveRecord::Migration[5.0]
  def change
    remove_column :offerings, :attachment, :string
  end
end
