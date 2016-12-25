require 'rails_helper'

RSpec.describe ClassSavingThrow, type: :model do
  it { should belong_to(:class_name) }
  it { should belong_to(:ability) }
end
