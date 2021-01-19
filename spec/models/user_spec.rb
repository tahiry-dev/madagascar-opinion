require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associaion' do
    it { have_many(:followings) }

    it { have_many(:followers) }

    it { have_many(:opinions) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:username) }

    it { is_expected.to validate_presence_of(:fullname) }
  end
end
