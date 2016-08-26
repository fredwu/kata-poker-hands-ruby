# frozen_string_literal: true
module PokerHands
  module Hand
    class FourOfAKind
      include AsAHand

      def valid?
        grouped_card_values.values[0] == 4
      end
    end
  end
end
