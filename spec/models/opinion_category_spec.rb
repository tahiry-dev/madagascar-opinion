require 'rails_helper'

RSpec.describe OpinionCategory, type: :model do

  it { should belong_to(:opinion) }

  it { should belong_to(:category) }

end
