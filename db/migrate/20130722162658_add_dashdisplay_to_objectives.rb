class AddDashdisplayToObjectives < ActiveRecord::Migration
  def change
    add_column :objectives, :dashdisplay, :boolean, :default => false
  end
end
