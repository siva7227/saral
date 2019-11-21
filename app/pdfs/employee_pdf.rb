class EmployeePdf < Prawn::Document
  def initialize (employees)
    super()
      @employee = employees
      employee_css
  end

  def employee_css
     table employee_data do
      row(0).front_style = :bold
      columns(1..3).align = :right
       self.row_colors = ["DDDDDD","FFFFFF"]
      self.header = true
    end
  end

  def employee_data
     [["name","Earnings", "Amount", "Deductions","Amount"]] +
     [[@employee.name, @employee.salaries.first.basic, @employee.salaries.first.hra, @employee.salaries.first.da,@employee.salaries.first.bonus]]+
     [["total_earnings","","","total_dections",""]] +
     [[ @employee.salaries.first.basic+@employee.salaries.first.hra,"","",@employee.salaries.first.basic+@employee.salaries.first.da,""]]
  end
end

