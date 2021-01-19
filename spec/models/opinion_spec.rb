require 'rails_helper'

RSpec.describe Opinion, type: :model do
  describe 'associations' do
    it { should belong_to(:author).class_name('User') }

    it { have_many(:opinion_categories) }

    it { have_many(:categories) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:text) }
  end
end
