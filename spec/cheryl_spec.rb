require "cheryl"

RSpec.describe Cheryl do
  describe "birthday" do
    it "is July 16" do
      cheryl = Cheryl.new

      result = cheryl.birthday.map &:to_s

      expect(result).to eq ["July 16"]
      expect(cheryl.know(result)).to be true
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

  describe "#statement3" do
    it "returns false for May 15" do
      cheryl = Cheryl.new

      result = cheryl.statement3("May 15")

      expect(result).to eq false
    end

    it "returns true for July 16" do
      cheryl = Cheryl.new

      result = cheryl.statement3("July 16")

      expect(result).to eq true
    end
  end

  it "all valid dates by statement 3" do
    cheryl = Cheryl.new

    result = cheryl.possible_dates.select { |date| cheryl.statement3(date) }.map(&:to_s)

    expect(result).to eq ["July 14", "July 16", "August 14", "August 15", "August 17"]
  end

  it "valid dates by statement 4" do
    cheryl = Cheryl.new

    statement3_dates = cheryl.possible_dates.select { |date| cheryl.statement3(date) }
    result = statement3_dates.select { |date| cheryl.statement4(date) }.map(&:to_s)

    expect(result).to eq ["July 16", "August 15", "August 17"]
  end

  it "valid dates by statement 5" do
    cheryl = Cheryl.new

    result = cheryl.possible_dates.select { |date| cheryl.statement5(date) }.map(&:to_s)

    expect(result).to eq ["June 17", "June 18", "July 14", "July 16"]
  end
end
