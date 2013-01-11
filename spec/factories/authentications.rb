# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :authentication do
    access_token "MyString"
    secret_token "MyString"
    provider "MyString"
    uid "MyString"
    user_id 1
  end
end
