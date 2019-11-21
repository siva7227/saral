Saral::Application.routes.draw do
  get "welcome/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  devise_for :users

  resources :employees do
    member do
      get :generate_payslip
    end
  end
  resources :salaries
  resources :holidays


    root 'welcome#index'

 # post '/employees/generate_payslip' => 'employees#generate_payslip'
end

