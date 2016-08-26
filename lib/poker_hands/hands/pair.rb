# frozen_string_literal: true
module PokerHands
  module Hand
    class Pair
      include AsAHand

      def valid?
        grouped_card_values.values[0] == 2
      end

      private

      def high_cards
        sorted_cards.select { |card| card.value == pair_card_value }
      end

      def pair_card_value
        grouped_card_values.keys[0]
      end
    end
  end
end
