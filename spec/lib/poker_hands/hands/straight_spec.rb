# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::Hand::Straight do
  it_behaves_like 'a hand'
  it_behaves_like 'same type comparison' do
    let(:left)  { '7D TH 9H 8C JC' }
    let(:right) { '7D TH 9H 8C 6C' }
  end
end
