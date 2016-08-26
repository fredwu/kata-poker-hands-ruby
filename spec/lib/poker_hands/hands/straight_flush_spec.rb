# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::Hand::StraightFlush do
  it_behaves_like 'a hand'
  it_behaves_like 'same type comparison' do
    let(:left)  { '7C 8C 9C TC JC' }
    let(:right) { '7C 8C 9C TC 6C' }
  end

  it_behaves_like 'same type comparison' do
    let(:left)  { '2C 3C 4C 5C 6C' }
    let(:right) { 'AC 2C 3C 4C 5C' }
  end

  it_behaves_like 'same type comparison' do
    let(:left)  { 'TC JC QC KC AC' }
    let(:right) { 'AC 2C 3C 4C 5C' }
  end
end
