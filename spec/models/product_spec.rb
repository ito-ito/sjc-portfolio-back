require 'rails_helper'

describe Product, type: :model do
  describe 'validate' do
    subject { product.valid? }

    context 'valid' do
      let(:product) { build(:product) }
      it { is_expected.to be_truthy }
    end

    context 'invalid' do
      context 'name is nil' do
        let(:product) { build(:product, name: nil) }
        it { is_expected.to be_falsy }
      end
    end
  end
end
