require 'rails_helper'

RSpec.describe Race, type: :model do
  let(:dragonborn) { FactoryGirl.create :dragonborn }
  let(:draconic_ancestry) { FactoryGirl.create :draconic_ancestry }
  let(:draconic) { FactoryGirl.create :draconic }
  let(:athletics) { FactoryGirl.create :athletics }
  let(:deception) { FactoryGirl.create :deception }
  let(:history) { FactoryGirl.create :history }
  let(:strength) { FactoryGirl.create :strength }
  let(:charisma) { FactoryGirl.create :charisma }

  it 'should allow an object to be created' do
    expect(dragonborn).to be_present
  end

  it { should have_many(:languages) }
  it { should have_many(:traits) }
  it { should have_many(:skills) }
  it { should have_many(:abilities) }

  it 'should have an associated trait' do
    expect(draconic_ancestry).to be_present

    dragonborn.traits << draconic_ancestry

    expect(dragonborn.traits.length).to eq(1)
    expect(dragonborn.traits.first.race_name).to eq('Draconic Ancestry')
  end

  it 'should have an associated language' do
    expect(draconic).to be_present

    dragonborn.languages << draconic

    expect(dragonborn.languages.length).to eq(1)
    expect(dragonborn.languages.first.name).to eq('Draconic')
  end

  it 'should have associated skills' do
    expect(athletics).to be_present
    expect(deception).to be_present
    expect(history).to be_present

    dragonborn.skills << athletics
    dragonborn.skills << deception
    dragonborn.skills << history

    expect(dragonborn.skills.length).to eq(3)
    expect(dragonborn.skills.first.name).to eq('Athletics')
  end

  it 'should have associated ability modifier' do
    expect(strength).to be_present
    expect(charisma).to be_present

    RacialAbilityBonus.create(
      race: dragonborn,
      ability: strength,
      bonus: 2
    )

    RacialAbilityBonus.create(
      race: dragonborn,
      ability: charisma,
      bonus: 1
    )

    expect(dragonborn.abilities.length).to eq(2)
    expect(dragonborn.abilities.first.name).to eq('Strength')
  end
end
