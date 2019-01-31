require 'rails_helper'

RSpec.describe Account, type: :model do
  context 'validations' do
    let(:account) { create(:account) }

    it 'is valid with name' do
      expect(account).to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
  end
end
