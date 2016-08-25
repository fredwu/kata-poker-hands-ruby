# frozen_string_literal: true
module PokerHands
  module Hand
    module AsAHand
      module Comparable
        def self.included(klass)
          klass.include ::Comparable
        end

        def <=>(other)
          if self.class == other.class
            compare_same_types(other)
          else
            compare_different_types(other)
          end
        end

        private

        def compare_same_types(other)
          raise NotImplementedError
        end

        def compare_different_types(other)
          worse_hands.include?(other.class) ? -1 : 1
        end

        def worse_hands
          PokerHands::HANDS.drop_while { |hand| hand.class != self.class }
        end
      end
    end
  end
end
