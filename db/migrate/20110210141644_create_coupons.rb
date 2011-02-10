class CreateCoupons < ActiveRecord::Migration
  def self.up
    create_table :coupons do |t|
      t.integer :deal_id
      t.integer :buyer_id
      t.string :code
      t.timestamps
    end
    add_index :coupons, :deal_id
    add_index :coupons, :buyer_id
  end

  def self.down
    drop_table :coupons
  end
end
