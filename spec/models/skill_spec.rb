RSpec.describe Skill, type: :model do
  let(:athletics) { FactoryGirl.create :athletics }
  let(:deception) { FactoryGirl.create :deception }
  let(:history) { FactoryGirl.create :history }

  it 'should allow the object to be created' do
    expect(athletics).to be_present
    expect(deception).to be_present
    expect(history).to be_present
  end

  it { should have_one(:race) }
end
