RSpec.describe Ability, type: :model do
  let(:strength) { FactoryGirl.create :strength }

  it 'should allow the object to be created' do
    expect(strength).to be_present
  end

  it { should have_many(:skills) }
end
