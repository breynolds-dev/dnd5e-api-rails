RSpec.describe Race, type: :model do
  let(:dragonborn) { FactoryGirl.create :dragonborn }
  let(:draconic_ancestry) { FactoryGirl.create :draconic_ancestry }
  let(:draconic) { FactoryGirl.create :draconic }
  let(:athletics) { FactoryGirl.create :athletics }
  let(:charisma) { FactoryGirl.create :charisma }
  let(:history) { FactoryGirl.create :history }

  it 'should allow an object to be created' do
    expect(dragonborn).to be_present
  end

  it { should have_many(:languages) }
  it { should have_many(:traits) }
  it { should have_many(:skills) }

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
    expect(charisma).to be_present
    expect(history).to be_present

    dragonborn.skills << athletics
    dragonborn.skills << charisma
    dragonborn.skills << history

    expect(dragonborn.skills.length).to eq(3)
    expect(dragonborn.skills.first.name).to eq('Athletics')
  end
end
