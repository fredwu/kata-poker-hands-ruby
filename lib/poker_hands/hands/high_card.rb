# frozen_string_literal: true
module PokerHands
  module Hand
    class HighCard
      include AsAHand

      def valid?
        high_card_values.any?
      end

      def high_card_values
        cards.map(&:value).sort do |a, b|
          Utils.int(b) <=> Utils.int(a)
        end
      end
    end
  end
end
