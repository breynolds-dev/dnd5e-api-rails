require 'rails_helper'

RSpec.describe Classes::Rogue, type: :model do
  let(:level_01) { FactoryGirl.create :rogue_level_01 }
  let(:level_02) { FactoryGirl.create :rogue_level_02 }

  it 'should allow the object to be created' do
    expect(level_01).to be_present
    expect(level_02).to be_present
  end

  it 'should not have a subclass at level 1 & 2' do
    expect(level_01.subclass).to eq('Rogue')
    expect(level_02.subclass).to eq('Rogue')
  end

  it 'should have the correct level associated to it' do
    expect(level_01.level).to eq(1)
    expect(level_02.level).to eq(2)
  end
end
