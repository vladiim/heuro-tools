require File.expand_path("spec/helper")

describe CategoryRecord do
  subject { CategoryRecord.new }

  describe "#associations" do
    it { should belong_to :service_record }
  end

  describe "#validations" do
    it { should validate_presence_of(:name) }
  end

  describe ".find_by_service" do
    before { @service = FactoryGirl.create(:category_record) }

    it 'finds the service by the service_record_id' do
      expect(CategoryRecord.find_by_service(1)).to eq [@service]
    end
  end
end