SoccerTeamManager::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  namespace :users do
    resources :teams
  end

  root :to => 'pages#index'

end
