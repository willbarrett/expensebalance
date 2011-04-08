class WelcomeController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_net
  
  include ExpensesHelper
  
  def index
  end

end
