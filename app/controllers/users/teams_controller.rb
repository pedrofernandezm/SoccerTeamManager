class Users::TeamsController < UsersController

  before_filter :authenticate_user!

  def index
    @teams = current_user.teams
  end


end