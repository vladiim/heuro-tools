require File.expand_path("spec/helper_lite")
require File.expand_path("app/models/service_finder")

class ServiceRecord; end
class CategoryRecord; end

describe ServiceFinder do
  let(:record)     { OpenStruct.new }
  let(:categories) { Object.new }

  describe ".get_record" do
    context "record exsists" do

      before do
        mock(ServiceRecord).find(1) { record }
        mock(CategoryRecord).find_by_service(1) { categories }
      end

      it "returns the record" do
        expect(ServiceFinder.get_record(1)).to eq record
      end

      it "finds all the categories that belong to the service" do
        servicefinder = ServiceFinder.get_record(1)
        expect(servicefinder.categories).to eq categories
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