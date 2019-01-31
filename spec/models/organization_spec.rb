require 'rails_helper'

RSpec.describe Organization, type: :model do
  context 'validates' do
    let(:organization) { build(:organization) }

    it 'validates with fields' do
      expect(organization).to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:cnpj) }
  end
end
