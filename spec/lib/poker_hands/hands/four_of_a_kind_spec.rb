# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::Hand::FourOfAKind do
  it_behaves_like 'a hand'
  it_behaves_like 'same type comparison' do
    let(:left)  { '7C 7D 7H 2D 7S' }
    let(:right) { '6C 6D 6H 2D 6S' }
  end
end
