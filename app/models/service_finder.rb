class ServiceFinder

  def self.get_record(id)
    ServiceRecord.find(id)
  end
end