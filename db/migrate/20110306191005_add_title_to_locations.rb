class AddTitleToLocations < ActiveRecord::Migration
  def self.up
    add_column :locations, :title, :string, :null => true
  end

  def self.down
    remove_column :locations, :title
  end
end
