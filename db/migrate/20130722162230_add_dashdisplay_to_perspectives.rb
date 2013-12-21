class AddDashdisplayToPerspectives < ActiveRecord::Migration
  def change
    add_column :perspectives, :dashdisplay, :boolean, :default => false
  end
end
