# frozen_string_literal: true
module PokerHands
  module Hand
    class Flush
      include AsAHand

      def valid?
        card_suits.uniq.size == 1
      end
    end
  end
end
