# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::Hand::ThreeOfAKind do
  it_behaves_like 'a hand'
  it_behaves_like 'same type comparison' do
    let(:left)  { '7C 7D 2H 4D 7S' }
    let(:right) { '6C 6D 2H 4D 6S' }
  end

  it_behaves_like 'same type comparison - equal ranking' do
    let(:left)  { '7C 7D 2H 8D 7S' }
    let(:right) { '7C 7D 2H 4D 7S' }
  end

  it_behaves_like 'same type comparison - equal ranking' do
    let(:left)  { '7C 7D 2H 5D 7S' }
    let(:right) { '7C 7D 2H 4D 7S' }
  end
end
