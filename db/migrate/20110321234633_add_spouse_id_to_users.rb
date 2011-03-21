class AddSpouseIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :spouse_id, :integer
  end

  def self.down
    remove_column :users, :spouse_id
  end
end