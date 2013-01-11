# == Schema Information
#
# Table name: authentications
#
#  id           :integer          not null, primary key
#  access_token :string(255)
#  secret_token :string(255)
#  provider     :string(255)
#  uid          :string(255)
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Authentication < ActiveRecord::Base
  attr_accessible :access_token, :provider, :secret_token, :uid, :user_id

  belongs_to :user
end
