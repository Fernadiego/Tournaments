require_relative '../app/models/team_model'

before :each do
    @Team = Team.new "Description",
end

describe "#new" do
    it "takes two parameters and returns a Team object" do
        @Team.should be_an_instance_of Team
    end
end

RSpec.describe "#id" do
    it "returns the correct id" do
        @Team.id.should eql 1
    end
end

RSpec.describe "#description" do
    it "returns the correct description" do
        @Team.description.should eql 1
    end
end