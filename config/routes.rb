Rails.application.routes.draw do
  devise_for :users, class_name: 'Users::User'
  namespace :financial_objects, path: '' do
    resources :incomes, :payment_methods, :expenses, :goals
  end
  namespace :categories do
    resources :category_expenses, path: 'expenses'
    resources :category_incomes, path: 'incomes'
  end
  # namespace :categories do
  #   resources :category_incomes
  # end
  namespace :users do
    resources :wallets
  end
  # namespace :financial_objects do
  #   resources :goals
  # end
  # namespace :financial_objects do
  #   resources :payment_methods
  # end
  # namespace :financial_objects do
  #   resources :expenses
  # end
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
