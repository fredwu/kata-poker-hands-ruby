# frozen_string_literal: true
module PokerHands
  module Hand
    class FullHouse
      include AsAHand

      def valid?
        ThreeOfAKind.new(cards).valid? && TwoPairs.new(cards).second_pair?
      end
    end
  end
end
