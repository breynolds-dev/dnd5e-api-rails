require 'rails_helper'

RSpec.describe Subclass, type: :model do
  let(:berserker) { FactoryGirl.create :barbarian_berserker }
  let(:totem_warrior) { FactoryGirl.create :barbarian_totem_warrior }

  it 'should allow the object to be created' do
    expect(berserker).to be_present
    expect(berserker.name).to eq('Berserker')
    expect(totem_warrior).to be_present
    expect(totem_warrior.name).to eq('Totem Warrior')
  end

  it { should belong_to(:class_name) }
  it { should have_many(:levels) }
end
