# frozen_string_literal: true
module PokerHands
  module Hand
    class TwoPairs
      include AsAHand

      def valid?
        first_pair? && second_pair?
      end

      def first_pair?
        Pair.new(cards).valid?
      end

      def second_pair?
        grouped_card_values.values[1] == 2
      end

      private

      def high_cards
        grouped_card_values.keys.map do |value|
          cards.detect { |card| card.value == value }
        end
      end
    end
  end
end
