class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.string :file
      t.references :offering, foreign_key: true

      t.timestamps
    end
  end
end
