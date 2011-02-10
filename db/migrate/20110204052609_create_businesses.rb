class CreateBusinesses < ActiveRecord::Migration
  def self.up
    create_table :businesses do |t|
      t.string :title
      t.integer :owner_id
      t.timestamps
    end

    add_index :businesses, :owner_id
  end

  def self.down
    drop_table :businesses
  end
end
