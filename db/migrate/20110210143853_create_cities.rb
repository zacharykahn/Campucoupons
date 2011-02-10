class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.string :title
      t.integer :state_id

      t.timestamps
    end
    add_index :cities, :state_id
  end

  def self.down
    drop_table :cities
  end
end
