require 'rails_helper'

RSpec.describe Level, type: :model do
  let(:level_01) { FactoryGirl.create :barbarian_level_01 }
  let(:level_02) { FactoryGirl.create :barbarian_level_02 }

  it 'should allow the object to be created' do
    expect(level_01).to be_present
    expect(level_02).to be_present
  end

  it { should belong_to(:subclass) }

  it 'should not have a subclass at level 1 & 2' do
    expect(level_01.subclass.name).to eq('Barbarian')
    expect(level_02.subclass.name).to eq('Barbarian')
  end

  it 'should have the correct level associated to it' do
    expect(level_01.number).to eq(1)
    expect(level_02.number).to eq(2)
  end
end
