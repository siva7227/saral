class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|

    t.decimal :basic
    t.decimal :hra
    t.decimal :da
    t.decimal :conveyance
    t.decimal :special_allowences
    t.decimal :bonus
    t.integer :employee_id
      t.timestamps
    end
  end
end
