# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::Hand::TwoPairs do
  it_behaves_like 'a hand'
  it_behaves_like 'same type comparison' do
    let(:left)  { '3C 3D 9H 2D 9S' }
    let(:right) { '7C 7D 8H 4D 8S' }
  end

  it_behaves_like 'same type comparison' do
    let(:left)  { '3C 3D 8H 2D 8S' }
    let(:right) { '2C 2D 8H 4D 8S' }
  end

  it_behaves_like 'same type comparison' do
    let(:left)  { '3C 3D 8H 5D 8S' }
    let(:right) { '3C 3D 8H 4D 8S' }
  end
end
