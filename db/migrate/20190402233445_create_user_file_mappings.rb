class CreateUserFileMappings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_file_mappings do |t|
      t.integer :file_id
      t.integer :user_id
      t.string :file_name

      t.timestamps
    end
  end
end
