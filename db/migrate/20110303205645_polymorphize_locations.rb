class PolymorphizeLocations < ActiveRecord::Migration
  def self.up
    rename_column :locations, :business_id, :locatable_id
    add_column :locations, :locatable_type, :string, :limit => 40
    add_index :locations, [:locatable_id, :locatable_type]
  end

  def self.down
    rename_column :locations, :locatable_id, :business_id
    remove_column :locations, :locatable_type
  end
end
