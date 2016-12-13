RSpec.describe Trait, type: :model do
  let(:draconic_ancestry) { FactoryGirl.create :draconic_ancestry }

  it 'should allow the object to be created' do
    expect(draconic_ancestry).to be_present
  end

  it { should have_one(:race) }
end
