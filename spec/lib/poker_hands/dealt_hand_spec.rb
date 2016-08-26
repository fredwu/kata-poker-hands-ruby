# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::DealtHand do
  describe '#new' do
    let(:dealt_hand) { described_class.new('2H 3D 5S 9C KD') }

    subject(:cards) { dealt_hand.cards }

    it { is_expected.to have(5).items }

    describe 'card' do
      subject { cards.to_a[0] }

      its(:value) { is_expected.to eq('2') }
      its(:suit)  { is_expected.to eq('H') }
    end
  end

  describe 'cards#<<' do
    let(:dealt_hand) { described_class.new('2H') }

    subject(:cards) { dealt_hand.cards }

    before do
      dealt_hand.cards << PokerHands::Card.new('3D')
    end

    it { is_expected.to have(2).items }

    describe 'card' do
      subject { cards.to_a[1] }

      its(:value) { is_expected.to eq('3') }
      its(:suit)  { is_expected.to eq('D') }
    end
  end

  describe 'comparison' do
    let(:left_hand)  { PokerHands::DealtHand.new(left) }
    let(:right_hand) { PokerHands::DealtHand.new(right) }

    describe '2H 3D 5S 9C KD vs 2C 3H 4S 8C AH' do
      let(:left)  { '2H 3D 5S 9C KD' }
      let(:right) { '2C 3H 4S 8C AH' }

      it { expect(left_hand).to be < right_hand }
    end

    describe '2H 4S 4C 2D 4H vs 2S 8S AS QS 3S (lol, example is wrong)' do
      let(:left)  { '2H 4S 4C 2D 4H' }
      let(:right) { '2S 8S AS QS 3S' }

      it { expect(left_hand).to be > right_hand }
    end

    describe '2H 3D 5S 9C KD vs 2C 3H 4S 8C KH' do
      let(:left)  { '2H 3D 5S 9C KD' }
      let(:right) { '2C 3H 4S 8C KH' }

      it { expect(left_hand).to be > right_hand }
    end

    describe '2H 3D 5S 9C KD vs 2D 3H 5C 9S KH' do
      let(:left)  { '2H 3D 5S 9C KD' }
      let(:right) { '2D 3H 5C 9S KH' }

      it { expect(left_hand).to be == right_hand }
    end
  end
end
