class RenameOwnerToRepresentative < ActiveRecord::Migration
  def self.up
    rename_column :businesses, :owner_id, :representative_id
  end

  def self.down
    rename_column :businesses, :representative_id, :owner_id
  end
end
