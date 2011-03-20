class Expense < ActiveRecord::Base
  belongs_to :user
  default_scope order 'date DESC'
  validates_presence_of :amount, :for
  validates_format_of :amount, :with => /\d+?(\.\d+)/, :message => "must be a dollar amount"
end
