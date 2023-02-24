# frozen_string_literal: true

require "./caesar"

describe Caesar do
  describe "#shift" do
    it "returns a string after applying the shift factor" do
      caesar = Caesar.new
      expect(caesar.shift("Hello, world!", 6)).to eql("Nkrru, cuxrj!")
    end

    it "returns a string after applying the shift factor" do
      caesar = Caesar.new
      expect(caesar.shift("Hello, world!", 0)).to eql("Hello, world!")
    end

    it "returns a string after applying the shift factor" do
      caesar = Caesar.new
      expect(caesar.shift("Hello, world!", -6)).to eql("Byffi, qilfx!")
    end
  end
end
