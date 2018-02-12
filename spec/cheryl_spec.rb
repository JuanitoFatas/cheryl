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

  describe "#tell" do
    it "return a new list of possible dates that match the month" do
      cheryl = Cheryl.new

      result = cheryl.tell("August").map &:to_s

      expect(result).to eq ["August 14", "August 15", "August 17"]
    end

    it "return a new list of possible dates that match the day" do
      cheryl = Cheryl.new

      result = cheryl.tell("15").map &:to_s

      expect(result).to eq ["May 15", "August 15"]
    end
  end
end
