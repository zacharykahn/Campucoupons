class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :phone
      t.string :address
      t.string :zip_code
      t.integer :city_id
      t.integer :state_id
      t.integer :business_id

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
