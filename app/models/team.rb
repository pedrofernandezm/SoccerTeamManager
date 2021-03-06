# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
  attr_accessible :name, :user_id

  belongs_to :user
  has_many :team_users
  has_many :users, through: :team_users

  validates :name, presence: true
end
