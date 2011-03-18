class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.integer :user_id
      t.decimal :amount, :precision => 2
      t.date :date
      t.text :for

      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end
