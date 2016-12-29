require 'rails_helper'

RSpec.describe Level, type: :model do
  let(:level_01) do
    barbarian = FactoryGirl.create(:barbarian)
    no_subclass = FactoryGirl.create(:barbarian_no_subclass, class_name: barbarian)
    FactoryGirl.create(:barbarian_level_01, subclass: no_subclass)
  end
  let(:level_20_berserker) do
    barbarian = FactoryGirl.create(:barbarian)
    berserker = FactoryGirl.create(:barbarian_berserker, class_name: barbarian)
    FactoryGirl.create(:barbarian_level_01, subclass: berserker)
  end

  it 'should allow the object to be created' do
    expect(level_01).to be_present
    expect(level_20_berserker).to be_present
  end

  it { should belong_to(:subclass) }

  it 'should not have a subclass at level 1 & 2' do
    expect(level_01.subclass.name).to eq('Barbarian')
  end

  it 'should have a subclass at higher levels' do
    expect(level_20_berserker.subclass.name).to eq('Berserker')
  end

  it 'should have the correct level associated to it' do
    expect(level_01.number).to eq(1)
    expect(level_20_berserker.number).to eq(1)
  end
end
