class CreateJsonData < ActiveRecord::Migration
  def change
    create_table :json_data do |t|
      t.integer :value
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
