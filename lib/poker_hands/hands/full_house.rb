# frozen_string_literal: true
module PokerHands
  module Hand
    class FullHouse
      include AsAHand

      def valid?
        ThreeOfAKind.new(cards).valid? &&
          grouped_card_values.values[1] == 2
      end
    end
  end
end
