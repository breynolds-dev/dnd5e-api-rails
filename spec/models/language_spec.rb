RSpec.describe Language, type: :model do
  let(:draconic) { FactoryGirl.create :draconic }

  it 'should allow the object to be created' do
    expect(draconic).to be_present
  end

  it { should have_many(:races) }
end
