# frozen_string_literal: true
module PokerHands
  module Hand
    module AsAHand
      def self.included(klass)
        klass.include ::Comparable
      end

      def <=>(other)
        if self.class == other.class
          compare_same_types(other)
        else
          Comparer::SameType.new(self, other).compare
        end
      end

      private

      def compare_same_types(other)
        raise NotImplementedError
      end
    end
  end
end
