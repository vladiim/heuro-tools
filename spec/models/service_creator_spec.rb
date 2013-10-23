require File.expand_path("spec/helper_lite")

class ServiceRecord; end
class ServiceCreator
  module ActiveModel
    module Naming; end
    module Conversion; end
    module Validations; end
  end
end

require File.expand_path("app/models/service_creator")

describe ServiceCreator do
  let(:service) { ServiceCreator.new(values) }
  let(:values)  { { 'name' => 'NAME', 'url' => 'URL',
                    'description' => 'DESCRIPTION',
                    'categories' => 'Cat1, Cat2' } }
  let(:record)  { OpenStruct.new }

  before { mock(ServiceRecord).new { record } }

  describe ".initialize" do
    it "sets a ServiceRecord as its record" do
      expect(service.record).to eq(record)
    end

    it "sets the record's attributes to the values passed in" do
      expect(service.record.name).to        eq('NAME')
      expect(service.record.url).to         eq('URL')
      # expect(service.record.categories).to  eq(['Cat1', 'Cat2'])
      expect(service.record.description).to eq('DESCRIPTION')
    end
  end

  describe "#save" do
    context "successful" do
      it "returns true" do
        mock(record).save { true }
        expect(service.save).to be
      end
    end

    # context "successful" do
    #   it "returns true" do
    #     mock(record).save { PresenceValidationError }
    #     expect(service.save).to be
    #   end
    # end
  end

  describe "#id attribute" do
    it "delegates id to the record" do
      mock(record).id { "RECORD ID" }
      expect(service.id).to eq("RECORD ID")
    end
  end
end