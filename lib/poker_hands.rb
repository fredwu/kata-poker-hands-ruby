# frozen_string_literal: true
require_relative 'poker_hands/card'
require_relative 'poker_hands/hands/utils'
require_relative 'poker_hands/hands/comparers/hand_type'
require_relative 'poker_hands/hands/comparers/card_value'
require_relative 'poker_hands/hands/as_a_hand'
require_relative 'poker_hands/hands/straight_flush'
require_relative 'poker_hands/hands/four_of_a_kind'
require_relative 'poker_hands/hands/full_house'
require_relative 'poker_hands/hands/flush'
require_relative 'poker_hands/hands/straight'
require_relative 'poker_hands/hands/three_of_a_kind'
require_relative 'poker_hands/hands/two_pairs'
require_relative 'poker_hands/hands/pair'
require_relative 'poker_hands/hands/high_card'
require_relative 'poker_hands/dealt_hand'

module PokerHands
  HANDS = [
    Hand::StraightFlush,
    Hand::FourOfAKind,
    Hand::FullHouse,
    Hand::Flush,
    Hand::Straight,
    Hand::ThreeOfAKind,
    Hand::TwoPairs,
    Hand::Pair,
    Hand::HighCard
  ].freeze

  VALUES = %w(A K Q J T 9 8 7 6 5 4 3 2).freeze

  def self.vs(left, right)
    left_hand  = DealtHand.new(left)
    right_hand = DealtHand.new(right)

    if left_hand > right_hand
      "Left wins!"
    elsif left_hand < right_hand
      "Right wins!"
    else
      "Tie."
    end
  end
end
