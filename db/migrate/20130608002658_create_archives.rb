class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :file
      t.integer :user_id

      t.timestamps
    end
  end
end
