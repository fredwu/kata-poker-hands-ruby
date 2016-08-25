# frozen_string_literal: true
module PokerHands
  module Hand
    module AsAHand
      def self.included(klass)
        klass.include Comparable
      end
    end
  end
end
