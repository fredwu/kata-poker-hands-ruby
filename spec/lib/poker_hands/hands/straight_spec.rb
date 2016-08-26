# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::Hand::Straight do
  it_behaves_like 'a hand'
  it_behaves_like 'same type comparison' do
    let(:left)  { '7D TH 9H 8C JC' }
    let(:right) { '7D TH 9H 8C 6C' }
  end

  it_behaves_like 'same type comparison' do
    let(:left)  { '2D 3D 4H 5C 6D' }
    let(:right) { 'AD 2D 3H 4C 5D' }
  end

  it_behaves_like 'same type comparison' do
    let(:left)  { 'TD JD QH KC AD' }
    let(:right) { 'AD 2D 3H 4C 5D' }
  end
end
