class ServiceCreator

  attr_accessor :name, :url, :description

  attr_reader :record
  def initialize(values={})
    @record = ServiceRecord.new

    record.name        =  values['name']        if values['name']
    record.url         =  values['url']         if values['url']
    record.description =  values['description'] if values['description']
  end

  # rails delegate not used for unit tests

  def save
    record.save
  end

  def id
    record.id
  end

  # to enable rails form from non active record object

  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  def persisted?
    false
  end
end