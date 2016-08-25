# frozen_string_literal: true
module PokerHands
  module Hand
    class HighCard
      include AsAHand

      def valid?
        high_card_values.any?
      end
    end
  end
end
