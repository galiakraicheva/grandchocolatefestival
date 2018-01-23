class ExternalUsersController < ApplicationController
  before_action :set_external_user, only: [:show, :edit, :update, :destroy]

  # GET /external_users
  # GET /external_users.json
  def index
    @external_users = ExternalUser.all
  end

  # GET /external_users/1
  # GET /external_users/1.json
  def show
  end

  # GET /external_users/new
  def new
    @external_user = ExternalUser.new
  end

  # GET /external_users/1/edit
  def edit
  end

  # POST /external_users
  # POST /external_users.json
  def create
    @external_user = ExternalUser.new(external_user_params)

    respond_to do |format|
      if @external_user.save
        format.html { redirect_to @external_user, notice: 'External user was successfully created.' }
        format.json { render :show, status: :created, location: @external_user }
      else
        format.html { render :new }
        format.json { render json: @external_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /external_users/1
  # PATCH/PUT /external_users/1.json
  def update
    respond_to do |format|
      if @external_user.update(external_user_params)
        format.html { redirect_to @external_user, notice: 'External user was successfully updated.' }
        format.json { render :show, status: :ok, location: @external_user }
      else
        format.html { render :edit }
        format.json { render json: @external_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /external_users/1
  # DELETE /external_users/1.json
  def destroy
    @external_user.destroy
    respond_to do |format|
      format.html { redirect_to external_users_url, notice: 'External user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external_user
      @external_user = ExternalUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def external_user_params
      params.require(:external_user).permit(:email)
    end
end
