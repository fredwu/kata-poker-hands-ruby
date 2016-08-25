# frozen_string_literal: true
module PokerHands
  module Hand
    class StraightFlush
      include AsAHand

      def valid?
        flush? && straight?
      end

      private

      def flush?
        card_suits.uniq.size == 1
      end

      def straight?
        PokerHands::VALUES.join.include?(card_values.join)
      end
    end
  end
end
