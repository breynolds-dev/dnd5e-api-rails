require 'rails_helper'

RSpec.describe ClassSkill, type: :model do
  it { should belong_to(:class_name) }
  it { should belong_to(:skill) }
end
