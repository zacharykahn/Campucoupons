class AddPhoneAndUrlToBusinesses < ActiveRecord::Migration
  def self.up
    add_column :businesses, :phone, :string
    add_column :businesses, :url, :string
  end

  def self.down
    remove_column :businesses, :phone
    remove_column :businesses, :url
  end
end
