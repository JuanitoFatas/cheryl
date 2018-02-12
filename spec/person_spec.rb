require "person"

RSpec.describe Person do
  describe "know" do
    it "return true if knows exactly one possible date" do
      someone = Person.new

      result = someone.know ["July 16"]

      expect(result).to eq true
    end
  end
end
