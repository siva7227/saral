class RemoveFieldNameFromemployees < ActiveRecord::Migration
  def change
    remove_column :employees, :date_of_birth
  end
end
