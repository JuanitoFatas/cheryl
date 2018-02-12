require "cheryl"

RSpec.describe Cheryl do
  describe "birthday" do
    xit "is July 16" do
      cheryl = Cheryl.new

      expect(cheryl.birthday).to eq "July 16"
    end
  end
end
