require 'rails_helper'

RSpec.describe Feat, type: :model do
  let(:athlete) { FactoryGirl.create :athlete }

  it 'should allow the object to be created' do
    expect(athlete).to be_present
  end
end
