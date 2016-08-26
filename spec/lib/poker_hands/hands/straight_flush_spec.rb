# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::Hand::StraightFlush do
  it_behaves_like 'a hand'
  it_behaves_like 'same type comparison' do
    let(:left)  { '7C 8C 9C TC JC' }
    let(:right) { '7C 8C 9C TC 6C' }
  end
end
