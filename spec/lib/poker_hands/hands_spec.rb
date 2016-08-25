# frozen_string_literal: true
require 'spec_helper'

RSpec.describe 'hands' do
  describe 'different types comparison' do
    it 'straight flush > four of a kind' do
      better = PokerHands::Hand::StraightFlush.new
      worse  = PokerHands::Hand::FourOfAKind.new

      expect(better).to be > worse
    end

    it 'four of a kind > full house' do
      better = PokerHands::Hand::FourOfAKind.new
      worse  = PokerHands::Hand::FullHouse.new

      expect(better).to be > worse
    end

    it 'full house > flush' do
      better = PokerHands::Hand::FullHouse.new
      worse  = PokerHands::Hand::Flush.new

      expect(better).to be > worse
    end

    it 'flush > straight' do
      better = PokerHands::Hand::Flush.new
      worse  = PokerHands::Hand::Straight.new

      expect(better).to be > worse
    end

    it 'straight > three of a kind' do
      better = PokerHands::Hand::Straight.new
      worse  = PokerHands::Hand::ThreeOfAKind.new

      expect(better).to be > worse
    end

    it 'three of a kind > two pairs' do
      better = PokerHands::Hand::ThreeOfAKind.new
      worse  = PokerHands::Hand::TwoPairs.new

      expect(better).to be > worse
    end

    it 'two pairs > pair' do
      better = PokerHands::Hand::TwoPairs.new
      worse  = PokerHands::Hand::Pair.new

      expect(better).to be > worse
    end

    it 'pair > high card' do
      better = PokerHands::Hand::Pair.new
      worse  = PokerHands::Hand::HighCard.new

      expect(better).to be > worse
    end

    it 'straight flush > high card' do
      better = PokerHands::Hand::StraightFlush.new
      worse  = PokerHands::Hand::HighCard.new

      expect(better).to be > worse
    end
  end
end
