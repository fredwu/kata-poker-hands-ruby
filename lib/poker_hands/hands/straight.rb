# frozen_string_literal: true
module PokerHands
  module Hand
    class Straight
      include AsAHand

      attr_accessor :ace_low

      def initialize(*args)
        super

        @ace_low = false
      end

      def valid?
        valid_ace_high? || valid_ace_low?
      end

      def high_card_values
        ace_low == true ? card_values.rotate : super
      end

      private

      def valid_ace_high?
        PokerHands::VALUES.join.include?(card_values.join)
      end

      def valid_ace_low?
        if card_values.include?('A')
          self.ace_low = true
          PokerHands::VALUES.rotate.join.include?(card_values.rotate.join)
        end
      end
    end
  end
end
