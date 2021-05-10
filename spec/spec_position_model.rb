require_relative '../app/models/position_model'

before :each do
    @Position = Position.new "Description",
end

describe "#new" do
    it "takes two parameters and returns a Position object" do
        @Position.should be_an_instance_of Position
    end
end

RSpec.describe "#id" do
    it "returns the correct id" do
        @Position.id.should eql 1
    end
end

RSpec.describe "#id_tournament" do
    it "returns the correct id_tournament" do
        @Position.id_tournament.should eql 1
    end
end

RSpec.describe "#id_team" do
    it "returns the correct id_team" do
        @Position.id_team.should eql 1
    end
end

RSpec.describe "#points" do
    it "returns the correct points" do
        @Position.points.should eql 1
    end
end

RSpec.describe "#won" do
    it "returns the correct won" do
        @Position.won.should eq 0
    end
end

RSpec.describe Position do
    context "#Test Class Position." do
        it "#calculatePosition()." do
            testInstance = Position.new
            expected = testInstance.calculatePosition()
            expect(expected).to eq true
        end
    end
end