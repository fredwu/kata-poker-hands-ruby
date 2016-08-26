# frozen_string_literal: true
module PokerHands
  module Hand
    class Straight
      include AsAHand

      def valid?
        PokerHands::VALUES.join.include?(card_values.join)
      end
    end
  end
end
