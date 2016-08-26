# frozen_string_literal: true
module PokerHands
  module Hand
    class StraightFlush
      include AsAHand

      def valid?
        Flush.new(cards).valid? && straight?
      end

      private

      def straight?
        PokerHands::VALUES.join.include?(card_values.join)
      end
    end
  end
end
