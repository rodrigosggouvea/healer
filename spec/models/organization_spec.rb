# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Organization, type: :model do
  subject { build(:organization) }

  describe 'Factory' do
    it 'should be valid' do
      expect(subject).to be_valid
    end
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
