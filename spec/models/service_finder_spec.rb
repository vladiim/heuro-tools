require File.expand_path("spec/helper_lite")
require File.expand_path("app/models/service_finder")

class ServiceRecord; end

describe ServiceFinder do
  let(:record) { Object.new }

  before { mock(ServiceRecord).find(1) { record } }

  describe ".get_record" do
    context "record exsists" do
      it "returns the record" do
        expect(ServiceFinder.get_record(1)).to eq(record)
      end
    end
  end
end