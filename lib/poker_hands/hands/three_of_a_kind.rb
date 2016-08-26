# frozen_string_literal: true
module PokerHands
  module Hand
    class ThreeOfAKind
      include AsAHand

      def valid?
        grouped_card_values.values[0] == 3
      end

      private

      def high_cards
        [high_cards_by_group[0]].compact
      end
    end
  end
end
