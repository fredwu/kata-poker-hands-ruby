# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PokerHands::Hand::Flush do
  it_behaves_like 'a hand'
  it_behaves_like 'same type comparison' do
    let(:left)  { '7C 9C TC 2C QC' }
    let(:right) { '7C 9C TC 2C JC' }
  end
end
