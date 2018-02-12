require "cheryl"

RSpec.describe Cheryl do
  describe "birthday" do
    xit "is July 16" do
      cheryl = Cheryl.new

      expect(cheryl.birthday).to eq "July 16"
    end
  end

  describe "possible dates" do
    it "return list of possible birthdates" do
      cheryl = Cheryl.new

      result = cheryl.possible_dates.map &:to_s

      expect(result).to eq Cheryl::DATES
    end
  end
end
