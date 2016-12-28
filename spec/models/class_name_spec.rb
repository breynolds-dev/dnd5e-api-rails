require 'rails_helper'

RSpec.describe ClassName, type: :model do
  let(:barbarian) { FactoryGirl.create :barbarian }
  let(:bard) { FactoryGirl.create :bard }

  it 'should allow the object to be created' do
    expect(barbarian).to be_present
    expect(bard).to be_present
  end

  it { should have_many(:levels) }
  it { should have_many(:subclasses) }
  it { should have_many(:saving_throws) }
  it { should have_many(:class_skill_options) }
end
