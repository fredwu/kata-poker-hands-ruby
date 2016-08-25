# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::DealtHand do
  describe 'cards collection' do
    let(:hand) { described_class.new }

    subject(:cards) { hand.cards }

    before do
      hand.cards << PokerHands::Card.new('2H')
    end

    it { is_expected.to have(1).item }

    describe 'card' do
      subject { cards.to_a[0] }

      its(:value) { is_expected.to eq('2') }
      its(:suit)  { is_expected.to eq('H') }
    end
  end
end
