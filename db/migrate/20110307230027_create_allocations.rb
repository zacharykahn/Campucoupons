class CreateAllocations < ActiveRecord::Migration
  def self.up
    create_table :allocations do |t|
      t.integer :deal_id
      t.integer :location_id
      t.timestamps
    end
    add_index :allocations, [:deal_id, :location_id]
  end

  def self.down
    drop_table :allocations
  end
end
