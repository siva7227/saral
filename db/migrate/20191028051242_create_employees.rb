class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :city
      t.string :salary
      t.string :job_tittle
      t.integer :
      t.string :country
      t.integer :mobile_number
      t.integer :date_of_birth

      t.timestamps
    end
  end
end
