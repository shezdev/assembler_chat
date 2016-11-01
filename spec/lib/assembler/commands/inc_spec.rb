require 'rails_helper'
require 'support/assembler_state_utils'

RSpec.describe Assembler::Commands::Inc do
  describe "#execute" do
    it "modifies the given state" do
      initial_state = Assembler::State.new(bx: 2)
      command = described_class.new("bx")
      expect(command.execute(initial_state)).to eq_state(ax: 0, bx: 3, cx: 0, dx: 0)
    end
  end
end
