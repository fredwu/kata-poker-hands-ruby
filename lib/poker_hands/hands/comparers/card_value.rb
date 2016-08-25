# frozen_string_literal: true
module PokerHands
  module Hand
    module Comparer
      class CardValue
        LEFT  = 0
        RIGHT = 1

        attr_reader :left, :right, :comparison_result

        def initialize(left, right)
          @left  = left
          @right = right
        end

        def compare
          compare_value_pair
          comparison_result
        end

        private

        def compare_value_pair
          value_pairs.detect do |pair|
            left_var  = Utils.int(pair[LEFT])
            right_var = Utils.int(pair[RIGHT])

            @comparison_result = left_var <=> right_var
            @comparison_result.nonzero?
          end
        end

        def value_pairs
          left.high_card_values.zip(right.high_card_values)
        end
      end
    end
  end
end
