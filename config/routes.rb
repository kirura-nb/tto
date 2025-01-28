Rails.application.routes.draw do
  root :to =>"list#index"
  get 'list/index', to: 'list#index', as: 'index_list'
  get 'test/play', to: 'test#play', as: 'play_test'
  get 'test/check', to: 'test#check', as: 'check_test'
  post 'editing/new', to: 'editing#new', as: 'new_editing'
  post 'editing/edit', to: 'editing#edit', as: 'edit_editing'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
