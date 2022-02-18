class RecordsController < ApplicationController
  include RecordsHelper

  before_action :set_record, only: %i[ show edit update destroy ]
  before_action :set_activity, only: %i[ new ]
  before_action :set_user
  before_action :authenticate_user!

  # GET /records or /records.json
  def index
    @records = Record.all.where(user_id: @user.id)
    @records = @records.sort{ |a, b| b.created_at <=> a.created_at }.sort{ |a, b| b.date <=> a.date }
  end

  # GET /records/1 or /records/1.json
  def show
  end

  # GET /records/new
  def new
    @activities = Activity.all
    @record = Record.new

    if @activity
      @record.activity_id = @activity.id
    end
  end

  # GET /records/1/edit
  def edit
    @activities = Activity.all
  end

  # POST /records or /records.json
  def create
    @record = Record.new(record_params)
    @record.user = @user

    respond_to do |format|
      if @record.save
        format.html { redirect_to user_record_url(@record), notice: "Record was successfully created" }
      else
        format.html { render :new }
        # format.html { redirect_to new_user_record_url, notice: "An error occured" }
      end
    end
  end

  # PATCH/PUT /records/1 or /records/1.json
  def update
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to user_record_url(@record), notice: "Record was successfully updated" }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /records/1 or /records/1.json
  def destroy
    respond_to do |format|
      format.html do
        if @record != nil
          @record.destroy
          flash[:notice] = "Record was successfully destroyed"
          redirect_back fallback_location: root_path
        else
          flash[:error] = "We got a problem Houston"
          redirect_back fallback_location: root_path
        end
      end
  
      format.js do
        if @record != nil
          @record.destroy
          flash.now[:notice] = "Record was successfully destroyed"
        else
          flash[:alert] = "We got a problem Houston"
        end
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    def set_user
      @user = current_user
    end

    def set_activity
      if params[:activity_id]
        @activity = Activity.find(params[:activity_id])
      else
        return false
      end
    end

    # Only allow a list of trusted parameters through.
    def record_params
      params.require(:record).permit(:duration, :date, :user_id, :activity_id)
    end
end
