class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.integer :file_id
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
