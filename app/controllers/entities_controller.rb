class EntitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_entity, only: [:show, :edit, :update, :destroy]

  # GET /entities
  # GET /entities.json
  def index
    filters = {}
    filters[:is_participant] = true if params['is_participant']
    filters[:is_sponsor] = true if params['is_sponsor']
    filters[:is_media] = true if params['is_media']
    filters[:is_partner] = true if params['is_partner']

    @entities = Entity.where(filters)
    @user = User.find_by(params[:id])
  end

  # GET /entities/1
  # GET /entities/1.json
  def show
  end

  # GET /entities/new
  def new
    @entity = Entity.new
  end

  # GET /entities/1/edit
  def edit
  end

  # POST /entities
  # POST /entities.json
  def create
    @entity = Entity.new(entity_params)

    respond_to do |format|
      if @entity.save
        format.html { redirect_to @entity, notice: 'Entity was successfully created.' }
        format.json { render :show, status: :created, location: @entity }
      else
        format.html { render :new }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entities/1
  # PATCH/PUT /entities/1.json
  def update
    respond_to do |format|
      if @entity.update(entity_params)
        format.html { redirect_to @entity, notice: 'Entity was successfully updated.' }
        format.json { render :show, status: :ok, location: @entity }
      else
        format.html { render :edit }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entities/1
  # DELETE /entities/1.json
  def destroy
    @entity.destroy
    respond_to do |format|
      format.html { redirect_to entities_url, notice: 'Entity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entity
      @entity = Entity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entity_params
      params.require(:entity).permit(:common_name, :website, :fb_page, :description,
      :progress, :is_participant, :is_sponsor, :is_media, :is_partner, :comments, :country)
    end
end
