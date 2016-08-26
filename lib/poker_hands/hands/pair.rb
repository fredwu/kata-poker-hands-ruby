# frozen_string_literal: true
module PokerHands
  module Hand
    class Pair
      include AsAHand

      def valid?
        grouped_card_values.values[0] == 2
      end
    end
  end
end
