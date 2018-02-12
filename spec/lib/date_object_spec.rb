RSpec.describe DateObject do
  describe "#month" do
    it "returns month" do
      date = DateObject.new("July 16")

      result = date.month

      expect(result).to eq "July"
    end
  end

  describe "#day" do
    it "returns day" do
      date = DateObject.new("July 16")

      result = date.day

      expect(result).to eq "16"
    end
  end

  describe "#to_s" do
    it "month + day" do
      date = DateObject.new("July 16")

      result = date.to_s

      expect(result).to eq "July 16"
    end
  end
end
