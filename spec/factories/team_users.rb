# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :team_user do
    user_id ""
    team_id 1
    confirmed false
  end
end
