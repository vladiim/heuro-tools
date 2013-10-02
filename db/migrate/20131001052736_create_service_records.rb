class CreateServiceRecords < ActiveRecord::Migration
  def change
    create_table :service_records do |t|
      t.string :name
      t.string :url
      t.text :description
      t.timestamps
    end
  end
end
