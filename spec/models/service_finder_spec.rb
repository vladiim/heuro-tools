require File.expand_path("spec/helper_lite")
require File.expand_path("app/models/service_finder")

class ServiceRecord; end

describe ServiceFinder do
  let(:record) { Object.new }

  describe ".get_record" do
    context "record exsists" do
      it "returns the record" do
        mock(ServiceRecord).find(1) { record }
        expect(ServiceFinder.get_record(1)).to eq(record)
      end
    end
  end

  describe ".all" do
    it "returns all the service records" do
      mock(ServiceRecord).all { 'ALL SERVICE RECORDS' }
      expect(ServiceFinder.all).to eq('ALL SERVICE RECORDS')
    end
  end
end