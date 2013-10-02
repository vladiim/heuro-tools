require File.expand_path("spec/helper")

describe ServiceRecord do
  subject { ServiceRecord.new }

  describe "#associations" do
    # it { should have_many :workout_exercises }
  end

  describe "#validations" do
    # it { should ensure_inclusion_of(:category).in_array(Heuro::CATEGORIES) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:url) }
  end
end