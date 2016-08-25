# frozen_string_literal: true
module PokerHands
  module Hand
    module AsAHand
      def self.included(klass)
        klass.include ::Comparable
      end

      attr_reader :cards

      def initialize(cards = Set.new)
        @cards = cards
      end

      def <=>(other)
        if self.class == other.class
          Comparer::CardValue.new(self, other).compare
        else
          Comparer::HandType.new(self, other).compare
        end
      end

      def valid_type
        valid? ? self.class : false
      end

      def valid?
        raise NotImplementedError
      end

      def high_card_values
        card_values
      end

      def card_values
        cards.map(&:value).sort do |a, b|
          Utils.int(b) <=> Utils.int(a)
        end
      end

      def card_suits
        cards.map(&:suit)
      end
    end
  end
end
