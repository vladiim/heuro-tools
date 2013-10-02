class ServiceRecord < ActiveRecord::Base
  attr_accessible :name, :url, :description

  validates_presence_of :name, :url
end