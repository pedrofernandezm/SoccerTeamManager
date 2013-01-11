require 'spec_helper'

describe User, "Validations" do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
end

describe User, "Relations" do
  it { should have_many(:owned_teams) }
end

describe User, "Instance methods" do

  describe "#full_name" do

    it "should return first_name plus last_name" do
      user = FactoryGirl.build(:user, first_name: "John", last_name: "Rambo")
      user.full_name.should == "John Rambo"
    end

  end

end
