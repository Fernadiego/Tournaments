require_relative '../app/models/match_model'

before :each do
    @Match = Match.new "Description",
end

describe "#new" do
    it "takes two parameters and returns a Match object" do
        @Match.should be_an_instance_of Match
    end
end

RSpec.describe "#id" do
    it "returns the correct id" do
        @Match.id.should eql 1
    end
end

RSpec.describe "#date" do
    it "returns the correct date" do
        @Match.date.should eql 1
    end
end