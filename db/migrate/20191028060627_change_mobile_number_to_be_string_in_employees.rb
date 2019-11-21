class ChangeMobileNumberToBeStringInEmployees < ActiveRecord::Migration
  def change
     change_column :employees, :mobile_number, :string
  end
  end
end
