# frozen_string_literal: true
require "poker_hands/hands/as_a_hand/comparers/same_type"
require "poker_hands/hands/as_a_hand/comparable"
require "poker_hands/hands/as_a_hand/cards_collection"
require "poker_hands/hands/as_a_hand"
require "poker_hands/hands/straight_flush"
require "poker_hands/hands/four_of_a_kind"
require "poker_hands/hands/full_house"
require "poker_hands/hands/flush"
require "poker_hands/hands/straight"
require "poker_hands/hands/three_of_a_kind"
require "poker_hands/hands/two_pairs"
require "poker_hands/hands/pair"
require "poker_hands/hands/high_card"

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

  SUITS  = %w(C D H S).freeze
  VALUES = %w(A K Q J T 9 8 7 6 5 4 3 2).freeze
end
