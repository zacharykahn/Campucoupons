class AddTitleToDeals < ActiveRecord::Migration
  def self.up
    add_column :deals, :title, :string
  end

  def self.down
    add_column :deals, :title
  end
end
