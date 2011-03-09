class RemoveCityIdFromDeals < ActiveRecord::Migration
  def self.up
    remove_column :deals, :city_id
  end

  def self.down
    add_column :deals, :city_id, :integer
    add_index :deals, :city_id
  end
end
