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
        high_cards_by_group
      end
    end
  end
end
