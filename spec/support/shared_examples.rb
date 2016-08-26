# frozen_string_literal: true
RSpec.shared_examples 'a hand' do
  subject { described_class.new }

  its(:high_card_values) { is_expected.to be_an(Array) }
end

RSpec.shared_examples 'same type comparison' do
  let(:left_hand)  { PokerHands::DealtHand.new(left).hand }
  let(:right_hand) { PokerHands::DealtHand.new(right).hand }

  it { expect(left_hand).to  be_a(described_class) }
  it { expect(right_hand).to be_a(described_class) }

  it { expect(left_hand).to be > right_hand }
end

RSpec.shared_examples 'same type comparison - equal ranking' do
  let(:left_hand)  { PokerHands::DealtHand.new(left).hand }
  let(:right_hand) { PokerHands::DealtHand.new(right).hand }

  it { expect(left_hand).to be == right_hand }
end
