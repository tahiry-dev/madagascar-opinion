require 'rails_helper'

RSpec.describe Category, type: :model do

  describe 'associaion' do
    
    it { have_many(:opinion_categories) }

    it { have_many(:opinions) }

  end

  describe 'validations' do

    it { is_expected.to validate_presence_of(:name) }

  end

end
