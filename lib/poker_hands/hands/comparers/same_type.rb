# frozen_string_literal: true
module PokerHands
  module Hand
    module Comparer
      class SameType
        attr_reader :left, :right

        def initialize(left, right)
          @left  = left
          @right = right
        end

        def compare
          worse_hands.include?(right.class) ? -1 : 1
        end

        private

        def worse_hands
          PokerHands::HANDS.drop_while { |hand| hand.class != left.class }
        end
      end
    end
  end
end
