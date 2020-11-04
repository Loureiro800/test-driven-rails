Rails.application.routes.draw do
  root to: 'todos#index'

  resources :todos, only: [:index, :new, :create] do
    get '/completions' => 'completions#create', as: :completion
    get '/completions#destroy' => 'completions#destroy', as: :completion_destroy
  end

  resource :session, only: [:new, :create]
end
