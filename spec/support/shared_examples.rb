# frozen_string_literal: true
RSpec.shared_examples 'a hand' do
  subject { described_class.new }

  it                     { is_expected.not_to be_valid }
  its(:high_card_values) { is_expected.to be_an(Array) }

  describe '#valid_type' do
    before do
      allow(subject).to receive(:valid?).and_return(true)
    end

    its(:valid_type) { is_expected.to eq(described_class) }
  end
end

RSpec.shared_examples 'same type comparison' do
  it { expect(left).to  be_a(described_class) }
  it { expect(right).to be_a(described_class) }
end
