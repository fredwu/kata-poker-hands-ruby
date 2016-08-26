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

      def valid?
        raise NotImplementedError
      end

      def valid_type
        valid? ? self.class : false
      end

      def high_card_values
        high_cards.map(&:value)
      end

      private

      def high_cards
        grouped_card_values.keys.map do |value|
          cards.detect { |card| card.value == value }
        end
      end

      def grouped_card_values
        card_values.group_by { |v| v }
                   .map { |k, v| [k, v.size] }
                   .sort { |a, b| b[1] <=> a[1] }
                   .to_h
      end

      def sorted_cards
        cards.sort do |a, b|
          Utils.int(b.value) <=> Utils.int(a.value)
        end
      end

      def card_values
        sorted_cards.map(&:value)
      end

      def card_suits
        cards.map(&:suit)
      end
    end
  end
end
