  class SalariesController < ApplicationController

  def index
    @salaries = Salary.all
  end

  def new
    @salary = Salary.new
  end

  def create
    @salary = Salary.new(salary_params)
         if @salary.save
            redirect_to salaries_path
         else
            render 'new'
         end
  end

  def show
     @salary = Salary.find(params[:id])
  end

  def edit
      @salary = Salary.find(params[:id])
  end

  def update
    @salary = Salary.find(params[:id])

    if @salary.update(salary_params)
      redirect_to salaries_path
    else
      render 'edit'
    end
  end


  def destroy
    @salary = Salary.find(params[:id])
    @salary.destroy
    redirect_to salaries_path
  end

private
  def salary_params
    params.require(:salary).permit(:employee_id, :basic, :hra, :da, :conveyance, :special_allowences, :bonus)
  end

end
