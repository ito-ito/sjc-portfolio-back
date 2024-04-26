require 'rails_helper'

describe Duty, type: :model do
  describe 'validate' do
    subject { duty.valid? }

    context 'vaid' do
      let(:duty) { build(:duty) }
      it { is_expected.to be_truthy}
    end

    context 'title is nil' do
      let(:duty) { build(:duty, title: nil) }
      it {is_expected.to be_falsy}
    end
    context 'start_date is nil' do
      let(:duty) { build(:duty, start_date: nil) }
      it {is_expected.to be_falsy}
    end
  end
end
