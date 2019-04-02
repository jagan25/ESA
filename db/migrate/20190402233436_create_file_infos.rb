class CreateFileInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :file_infos do |t|
      t.string :path
      t.string :checksum
      t.integer :redundant_count
      t.integer :parent_id

      t.timestamps
    end
  end
end
