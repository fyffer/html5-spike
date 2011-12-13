class EmployeesController < ApplicationController
  # GET /employees.json
  def index
    @employees = Employee.all

    respond_to do |format|
      format.html
      #format.json { render json: @employees }
    end
  end

  # GET /employees/1.json
  def show
    @employee = Employee.find(params[:id])

    respond_to do |format|
      format.json { render json: @employee }
    end
  end

  # GET /employees/new.json
  def new
    @employee = Employee.new

    respond_to do |format|
      format.json { render json: @employee }
    end
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find(params[:id])
  end

  # POST /employees.json
  def create
    @employee = Employee.new(params[:employee])

    respond_to do |format|
      if @employee.save
        format.json { render json: @employee, status: :created, location: @employee }
      else
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employees/1.json
  def update
    @employee = Employee.find(params[:id])

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        format.json { head :ok }
      else
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1.json
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    respond_to do |format|
      format.json { head :ok }
    end
  end

  def employees_list
    @employees = Employee.all
    respond_to do |format|
      format.json { render json: @employees }
    end
  end
end
