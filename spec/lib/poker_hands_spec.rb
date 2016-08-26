# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands do
  describe '.vs' do
    it { expect(PokerHands.vs('2H 3D 5S 9C KD', '2C 3H 4S 8C KH')).to eq('Left wins!') }
    it { expect(PokerHands.vs('2H 3D 5S 9C KD', '2C 3H 4S 8C AH')).to eq('Right wins!') }
    it { expect(PokerHands.vs('2H 3D 5S 9C KD', '2D 3H 5C 9S KH')).to eq('Tie.') }
  end
end
