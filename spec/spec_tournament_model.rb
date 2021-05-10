require_relative '../app/models/tournament_model'

before :each do
    @Tournament = Tournament.new "Description",
end

describe "#new" do
    it "takes two parameters and returns a Tournament object" do
        @Tournament.should be_an_instance_of Tournament
    end
end

RSpec.describe "#id" do
    it "returns the correct id" do
        @Tournament.id.should eql 1
    end
end

RSpec.describe "#description" do
    it "returns the correct description" do
        @Tournament.description.should eql "Description"
    end
end

RSpec.describe Tornament do
    context "#Test Class Tornament." do
        it "#calculatePosition()." do
            testInstance = Tornament.new
            expected = testInstance.calculatePosition()
            expect(expected).to eq true
        end
    end
end