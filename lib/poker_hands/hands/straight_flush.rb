# frozen_string_literal: true
module PokerHands
  module Hand
    class StraightFlush
      include AsAHand

      def valid?
        Flush.new(cards).valid? && Straight.new(cards).valid?
      end
    end
  end
end
