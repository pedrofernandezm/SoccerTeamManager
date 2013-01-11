class Users::TeamsController < UsersController

  def index
    @teams = Team.order(:name)
  end

  def new
    @team = Team.new
  end

end