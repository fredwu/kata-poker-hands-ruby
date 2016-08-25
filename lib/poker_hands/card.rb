# frozen_string_literal: true
module PokerHands
  class Card
    attr_reader :value, :suit

    def initialize(denotation)
      @value, @suit = denotation.split("")
    end
  end
end
