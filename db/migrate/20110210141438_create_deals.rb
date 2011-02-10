class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.text :description
      t.text :fine_print
      t.decimal :value
      t.decimal :discounted_value
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :business_id
      t.timestamps
    end
    add_index :deals, :starts_at
    add_index :deals, :ends_at
    add_index :deals, :business_id
  end

  def self.down
    drop_table :deals
  end
end
