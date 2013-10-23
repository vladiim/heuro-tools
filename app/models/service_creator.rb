class ServiceCreator

  attr_accessor :name, :url, :description, :categories

  attr_reader :record, :values
  def initialize(values={})
    @record, @values = ServiceRecord.new, values
    set_record_values
  end

  # can't use rails' :delegate method in unit tests

  def save; record.save; end
  def id;   record.id;   end

  private

  def set_record_values
    record.name        =  values['name']                   if values['name']
    record.url         =  values['url']                    if values['url']
    record.description =  values['description']            if values['description']
    record.categories  =  values['categories'].split(', ') if values['categories']
  end

  # rails form from non ActiveRecord Object

  public

  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  def persisted?
    false
  end
end