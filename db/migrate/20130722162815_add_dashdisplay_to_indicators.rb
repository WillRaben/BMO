class AddDashdisplayToIndicators < ActiveRecord::Migration
  def change
    add_column :indicators, :dashdisplay, :boolean, :default => false
  end
end
