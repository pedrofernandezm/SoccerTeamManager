SoccerTeamManager::Application.routes.draw do

  namespace :users do
    resources :teams
  end

  root :to => 'users/teams#index'

end
