# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::Hand::FullHouse do
  it_behaves_like 'a hand'
  it_behaves_like 'same type comparison' do
    let(:left)  { '7C 7D 2H 2D 7S' }
    let(:right) { '6C 6D 8H 8D 6S' }
  end
end
