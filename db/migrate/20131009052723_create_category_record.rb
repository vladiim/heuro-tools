class CreateCategoryRecord < ActiveRecord::Migration
  def change
    create_table :category_records do |t|
      t.string :name
      t.integer :service_record_id
      t.timestamp
    end
  end
end
