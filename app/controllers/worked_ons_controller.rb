class WorkedOnsController < ApplicationController

  # GET /worked_ons.json
  def index
    @worked_ons = WorkedOn.all

    respond_to do |format|
      format.json { render json: @worked_ons }
    end
  end

  # GET /worked_ons/1.json
  def show
    @worked_on = WorkedOn.find(params[:id])

    respond_to do |format|
      format.json { render json: @worked_on }
    end
  end

  # GET /worked_ons/new
  # GET /worked_ons/new.json
  def new
    @worked_on = WorkedOn.new

    respond_to do |format|
      format.json { render json: @worked_on }
    end
  end

  # GET /worked_ons/1/edit
  def edit
    @worked_on = WorkedOn.find(params[:id])
  end

  # POST /worked_ons
  # POST /worked_ons.json
  def create
    @worked_on = WorkedOn.new(params[:worked_on])

    respond_to do |format|
      if @worked_on.save
        format.json { render json: @worked_on, status: :created, location: @worked_on }
      else
        format.json { render json: @worked_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /worked_ons/1.json
  def update
    @worked_on = WorkedOn.find(params[:id])

    respond_to do |format|
      if @worked_on.update_attributes(params[:worked_on])
        format.json { head :ok }
      else
        format.json { render json: @worked_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worked_ons/1.json
  def destroy
    @worked_on = WorkedOn.find(params[:id])
    @worked_on.destroy

    respond_to do |format|
      format.json { head :ok }
    end
  end

  def worked_on_list
    @worked_on = WorkedOn.all
    respond_to do |format|
      format.json { render json: @worked_on }
    end
  end

end
