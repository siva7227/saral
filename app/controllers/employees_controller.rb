class EmployeesController < ApplicationController

  def index
    @employees = Employee.all

    respond_to do |format|
      format.html
      format.pdf {render template: 'employees/report.pdf.erb', pdf:'report', wkhtmltopdf: '/Users/shivakumar/.rvm/gems/ruby-2.3.4/bin/wkhtmltopdf', orientation: 'Landscape'}
      end
  end
  def new
    @employee = Employee.new
  end

  def generate_payslip
    @employee = Employee.find(params[:id])
   respond_to do |format|
      format.html
      format.pdf {render template: 'employees/report.pdf.erb', pdf:'report', wkhtmltopdf: '/Users/shivakumar/.rvm/gems/ruby-2.3.4/bin/wkhtmltopdf', orientation: 'Landscape'}
    end
  end

  def create
   @employee = Employee.new(employee_params)
      if @employee.save
        redirect_to employees_path
      else
        render 'new'
      end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
      if @employee.update(employee_params)
        redirect_to employees_path
      else
        render 'edit'
      end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

private
  def employee_params
    params.require(:employee).permit(:name, :city, :salary, :job_tittle, :country, :mobile_number, :date_of_joining, :date_of_birth)
  end
end






