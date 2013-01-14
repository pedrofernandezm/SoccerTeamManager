# == Schema Information
#
# Table name: team_users
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  team_id    :integer
#  confirmed  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TeamUser < ActiveRecord::Base
  attr_accessible :confirmed, :team_id, :user_id

  belongs_to :user
  belongs_to :team
end
