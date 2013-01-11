class PagesController < ApplicationController

  def index
    redirect_to users_teams_path and return if current_user
  end

end