require 'rails_helper'

describe Skill, type: :model do
  describe 'validate' do
    subject { skill.valid? }

    context 'valid' do
      let(:skill) { build(:skill) }
      it { is_expected.to be_truthy }
    end

    context 'invalid' do
      context 'name is nil' do
        let(:skill) { build(:skill, name: nil) }
        it { is_expected.to be_falsy }
      end

      context 'level is lower' do
        let(:skill) { build(:skill, level: -1) }
        it { is_expected.to be_falsy }
      end

      context 'level is upper' do
        let(:skill) { build(:skill, level: 101) }
        it { is_expected.to be_falsy }
      end
    end
  end
end
