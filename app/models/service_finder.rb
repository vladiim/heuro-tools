class ServiceFinder

  def self.get_record(id)
    record = ServiceRecord.find(id)
    record.categories = CategoryRecord.find_by_service(id)
    record
  end

  def self.all
    ServiceRecord.all
  end
end