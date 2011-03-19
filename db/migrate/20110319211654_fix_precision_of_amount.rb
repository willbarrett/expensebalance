class FixPrecisionOfAmount < ActiveRecord::Migration
  def self.up
    change_column :expenses, :amount, :decimal, :precision => 11, :scale => 2
  end

  def self.down
    change_column :expenses, :amount, :decimal
  end
end