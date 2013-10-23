require File.expand_path("spec/helper")

class ActiveRecordCollection; end

describe ServiceRecord do
  subject { ServiceRecord.new }

  describe "#associations" do
    it { should have_many :category_records}
  end

  describe "#validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:url) }
  end

  describe "#categories=" do

    context 'with an array' do
      let(:cat) { ['Cat1', 'Cat2'] }

      it "sets category_records to categories" do
        subject.categories = cat
        subject.category_records.each do |category_record|
          expect(cat).to include category_record.name
        end
      end

      it 'returns the categories' do
        result = (subject.categories = cat)
        expect(result.first).to eq 'Cat1'
      end
    end

    context 'without an array' do
      it "sets the categories to the value" do
        values = ActiveRecordCollection
        subject.categories = values
        expect(subject.categories).to eq values
      end
    end
  end
end