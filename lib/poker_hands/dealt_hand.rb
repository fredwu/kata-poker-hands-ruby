# frozen_string_literal: true
require 'set'

module PokerHands
  class DealtHand
    def cards
      @cards ||= Set.new
    end
  end
end
