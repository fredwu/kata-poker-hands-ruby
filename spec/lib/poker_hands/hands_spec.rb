# frozen_string_literal: true
require 'spec_helper'

RSpec.describe 'hands' do
  describe 'different types comparison' do
    it 'straight flush > four of a kind' do
      left  = PokerHands::Hand::StraightFlush.new
      right = PokerHands::Hand::FourOfAKind.new

      expect(left).to be > right
    end

    it 'four of a kind > full house' do
      left  = PokerHands::Hand::FourOfAKind.new
      right = PokerHands::Hand::FullHouse.new

      expect(left).to be > right
    end

    it 'full house > flush' do
      left  = PokerHands::Hand::FullHouse.new
      right = PokerHands::Hand::Flush.new

      expect(left).to be > right
    end

    it 'flush > straight' do
      left  = PokerHands::Hand::Flush.new
      right = PokerHands::Hand::Straight.new

      expect(left).to be > right
    end

    it 'straight > three of a kind' do
      left  = PokerHands::Hand::Straight.new
      right = PokerHands::Hand::ThreeOfAKind.new

      expect(left).to be > right
    end

    it 'three of a kind > two pairs' do
      left  = PokerHands::Hand::ThreeOfAKind.new
      right = PokerHands::Hand::TwoPairs.new

      expect(left).to be > right
    end

    it 'two pairs > pair' do
      left  = PokerHands::Hand::TwoPairs.new
      right = PokerHands::Hand::Pair.new

      expect(left).to be > right
    end

    it 'pair > high card' do
      left  = PokerHands::Hand::Pair.new
      right = PokerHands::Hand::HighCard.new

      expect(left).to be > right
    end

    it 'straight flush > high card' do
      left  = PokerHands::Hand::StraightFlush.new
      right = PokerHands::Hand::HighCard.new

      expect(left).to be > right
    end
  end
end
