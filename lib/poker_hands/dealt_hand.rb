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
      Hand::StraightFlush.new(cards).valid_type ||
        Hand::FourOfAKind.new(cards).valid_type ||
        Hand::FullHouse.new(cards).valid_type ||
        Hand::Flush.new(cards).valid_type ||
        Hand::Straight.new(cards).valid_type ||
        Hand::ThreeOfAKind.new(cards).valid_type ||
        Hand::TwoPairs.new(cards).valid_type ||
        Hand::Pair.new(cards).valid_type ||
        Hand::HighCard
    end
  end
end
