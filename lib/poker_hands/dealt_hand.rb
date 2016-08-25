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
  end
end
