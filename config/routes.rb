Expensebalance::Application.routes.draw do
  
  root :to => "welcome#index"

  resources :expenses do
    collection do
      get 'search' # Search form
      get 'search/:terms' # Handling the search. Also opens up API opportunities by being a get...
      get 'months' # Shows the lists of available months
      get 'month/:year/:month', :action => 'month', :as => :month # Shows a single month.
    end
  end
      

  devise_for :users

end
