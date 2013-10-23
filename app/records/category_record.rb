class CategoryRecord < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  belongs_to :service_record

  def self.find_by_service(id)
    self.where service_record_id: id
  end
end