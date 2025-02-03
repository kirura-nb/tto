Rails.application.routes.draw do
  # root :to =>'list#index'
  root :to =>'sessions#new'

  # 新規登録画面パス
  resource :user, only: [:new, :edit, :create]

  # ログインパス
  get 'login',  to: 'sessions#new', as: 'new_sessions'
  post 'login', to: 'sessions#create', as: 'create_sessions'
  delete 'logout', to: 'sessions#destroy', as: 'destroy_sessions'

  # 試験パス
  get 'list/index', to: 'list#index', as: 'index_list'
  get 'test/play', to: 'test#play', as: 'play_test'
  get 'test/check', to: 'test#check', as: 'check_test'
  post 'editing/new', to: 'editing#new', as: 'new_editing'
  post 'editing/edit', to: 'editing#edit', as: 'edit_editing'
end
