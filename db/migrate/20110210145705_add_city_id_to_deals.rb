class AddCityIdToDeals < ActiveRecord::Migration
  def self.up
    add_column :deals, :city_id, :integer
    add_index :deals, :city_id
  end

  def self.down
    remove_column :deals, :city_id
  end
end
