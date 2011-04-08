module ExpensesHelper
  def find_net
    mine = Expense.where(:user_id => current_user.id).sum('amount')
    theirs = Expense.where('user_id <> ?', current_user.id).sum('amount')
    @net = mine - theirs
    @net_color = @net >= 0 ? 'color: green' : 'color: red'
  end
end
