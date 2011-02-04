class CreateBusinesses < ActiveRecord::Migration
  def self.up
    create_table :businesses do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :businesses
  end
end
