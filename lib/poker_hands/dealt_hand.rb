# frozen_string_literal: true
require 'set'

module PokerHands
  class DealtHand
    def initialize(cards_string)
      denotations = cards_string.split(' ')
      denotations.each { |denotation| cards << Card.new(denotation) }
    end

    def cards
      @cards ||= Set.new
    end

    private

    def hand_type
      Hand::StraightFlush.new(cards).valid? ||
        Hand::FourOfAKind.new(cards).valid? ||
        Hand::FullHouse.new(cards).valid? ||
        Hand::Flush.new(cards).valid? ||
        Hand::Straight.new(cards).valid? ||
        Hand::ThreeOfAKind.new(cards).valid? ||
        Hand::TwoPairs.new(cards).valid? ||
        Hand::Pair.new(cards).valid? ||
        Hand::HighCard
    end
  end
end
