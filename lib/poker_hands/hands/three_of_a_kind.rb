# frozen_string_literal: true
module PokerHands
  module Hand
    class ThreeOfAKind
      include AsAHand

      def valid?
        grouped_card_values.values[0] == 3
      end
    end
  end
end
