class Change < ActiveRecord::Migration
  def change
     change_column :employees, :date_of_joining, :string
  end
end
