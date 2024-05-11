require 'rails_helper'

describe Career, type: :model do
  describe 'validate' do
    subject { career.valid? }

    context 'vaid' do
      let(:career) { build(:career) }
      it { is_expected.to be_truthy}
    end

    context 'title is nil' do
      let(:career) { build(:career, title: nil) }
      it {is_expected.to be_falsy}
    end
    context 'start_date is nil' do
      let(:career) { build(:career, start_date: nil) }
      it {is_expected.to be_falsy}
    end
  end
end
