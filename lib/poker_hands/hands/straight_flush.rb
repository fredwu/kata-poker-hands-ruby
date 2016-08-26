# frozen_string_literal: true
module PokerHands
  module Hand
    class StraightFlush
      include AsAHand

      def valid?
        Flush.new(cards).valid? && straight.valid?
      end

      def high_card_values
        straight.high_card_values
      end

      private

      def straight
        @straight ||= Straight.new(cards)
      end
    end
  end
end
