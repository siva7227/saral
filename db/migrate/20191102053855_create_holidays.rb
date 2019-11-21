class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|

    t.string :leave_type
    t.date :start_date
    t.date :end_date
    t.integer :employee_id

      t.timestamps
    end
  end
end
