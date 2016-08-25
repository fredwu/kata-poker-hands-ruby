# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::Hand::HighCard do
  it_behaves_like 'a hand'

  subject do
    described_class.new(
      [
        PokerHands::Card.new('2H'),
        PokerHands::Card.new('3H'),
        PokerHands::Card.new('AH'),
        PokerHands::Card.new('JH')
      ]
    )
  end

  its(:high_card_values) { is_expected.to eq(['A', 'J', '3', '2']) }
end
