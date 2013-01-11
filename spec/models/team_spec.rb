require 'spec_helper'

describe Team, "Validations" do
  it { should validate_presence_of(:name) }
end

describe Team, "Relations" do
  it { should belong_to(:user) }
end
