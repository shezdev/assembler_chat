require 'rails_helper'

RSpec.describe Assembler::Commands::Dec do
  describe "#execute" do
    it "modifies the given state" do
      initial_state = {"ax" => 0, "bx" => 2, "cx" => 0, "dx" => 0}
      command = described_class.new("bx")
      expect(command.execute(initial_state)).to eq({
        "ax" => 0,
        "bx" => 1,
        "cx" => 0,
        "dx" => 0
      })
    end
  end
end