require_relative '../app/models/fixture_model'

before :each do
    @Fixture = Fixture.new "Description",
end

describe "#new" do
    it "takes two parameters and returns a Fixture object" do
        @Fixture.should be_an_instance_of Fixture
    end
end

RSpec.describe "#id" do
    it "returns the correct id" do
        @Fixture.id.should eql 1
    end
end

RSpec.describe "#description" do
    it "returns the correct description" do
        @Fixture.description.should eql "Description"
    end
end

RSpec.describe Fixture do
    context "#Test Class Fixture." do
        it "#generateFixture()." do
            testInstance = Fixture.new
            expected = testInstance.generateFixture()
            expect(expected).to eq true
        end
    end
end