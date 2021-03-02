class CreateBucket < ActiveRecord::Migration[5.2]
  def change
    create_table :buckets do |t|
      t.integer :number
    end
  end
end
