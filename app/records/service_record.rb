class ServiceRecord < ActiveRecord::Base

  validates_presence_of :name, :url

  has_many :category_records

  attr_reader :categories
  def categories=(values)
    @categories = values
    categories.class == Array ? create_new_categories : categories
  end

  private

  def create_new_categories
    categories.each.inject([]) do |updated_categories, name|
      category_record = category_records.new(name: name)
      updated_categories << category_record
    end
  end
end