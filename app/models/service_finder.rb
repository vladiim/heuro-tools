class ServiceFinder

  def self.get_record(id)
    ServiceRecord.find(id)
  end

  def self.all
    ServiceRecord.all
  end
end