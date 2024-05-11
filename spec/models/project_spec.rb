require 'rails_helper'

describe Project, type: :model do
  describe 'validate' do
    subject { project.valid? }

    context 'vaid' do
      let(:project) { build(:project) }
      it { is_expected.to be_truthy}
    end

    context 'title is nil' do
      let(:project) { build(:project, title: nil) }
      it {is_expected.to be_falsy}
    end
    context 'start_date is nil' do
      let(:project) { build(:project, start_date: nil) }
      it {is_expected.to be_falsy}
    end
  end
end
