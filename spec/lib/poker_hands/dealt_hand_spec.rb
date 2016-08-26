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

  describe '#hand_type' do
    describe 'straight flush' do
      subject { described_class.new('7C 8C 9C TC JC') }

      its(:hand_type) { is_expected.to be(PokerHands::Hand::StraightFlush) }
    end

    describe 'four of a kind' do
      subject { described_class.new('7C 7D 7H 2D 7S') }

      its(:hand_type) { is_expected.to be(PokerHands::Hand::FourOfAKind) }
    end

    describe 'full house' do
      subject { described_class.new('7C 7D 2H 2D 7S') }

      its(:hand_type) { is_expected.to be(PokerHands::Hand::FullHouse) }
    end

    describe 'flush' do
      subject { described_class.new('7C 9C TC 2C QC') }

      its(:hand_type) { is_expected.to be(PokerHands::Hand::Flush) }
    end

    describe 'straight' do
      subject { described_class.new('7D TH 9H 8C JC') }

      its(:hand_type) { is_expected.to be(PokerHands::Hand::Straight) }
    end

    describe 'three of a kind' do
      subject { described_class.new('7C 7D 2H 4D 7S') }

      its(:hand_type) { is_expected.to be(PokerHands::Hand::ThreeOfAKind) }
    end

    describe 'two pairs' do
      subject { described_class.new('7C 7D 8H 4D 8S') }

      its(:hand_type) { is_expected.to be(PokerHands::Hand::TwoPairs) }
    end

    describe 'pair' do
      subject { described_class.new('7C 9D 8H 4D 8S') }

      its(:hand_type) { is_expected.to be(PokerHands::Hand::Pair) }
    end

    describe 'high card' do
      subject { described_class.new('7C 9D 8H 4D JS') }

      its(:hand_type) { is_expected.to be(PokerHands::Hand::HighCard) }
    end
  end
end
