class UsersController < ApplicationController
  include UsersHelper

  before_action :authenticate_user!
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users 
  def index
    @users = User.all
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1
  def show
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, flash: { success: "Profil créé"} }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_path, flash: { success: "Profil mis à jour"} }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, flash: { success: "Profil détruit"} }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :password, :first_name, :last_name, :gender, :date_of_birth, :avatar)
    end
end
