class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update]


  def new
    @participant = Participant.find_by!(access_token: params[:access_token])
    @questionnaire = @participant.questionnaire || Questionnaire.new
  end

  # GET /questionnaires/1
  # GET /questionnaires/1.json
  def show
  end

  # GET /questionnaires/1/edit
  def edit
  end

  # POST /questionnaires
  # POST /questionnaires.json
  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    participant = Participant.find_by!(access_token: params[:access_token])

    respond_to do |format|
      if @questionnaire.save
        participant.questionnaire_id = @questionnaire.id
        participant.save!

        format.html { redirect_to questionnaire_path(id: participant.access_token), notice: 'Questionnaire was successfully created.' }
        format.json { render :show, status: :created, location: @questionnaire }
      else
        format.html { render :new }
        format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionnaires/1
  # PATCH/PUT /questionnaires/1.json
  def update
    respond_to do |format|
      if @questionnaire.update(questionnaire_params)
        @participant.questionnaire_id = @questionnaire.id
        @participant.save!

        format.html { redirect_to questionnaire_path(id: @participant.access_token), notice: 'Questionnaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionnaire }
      else
        format.html { render :edit }
        format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire
      @participant = Participant.find_by!(access_token: params[:id])
      @questionnaire = @participant.questionnaire || Questionnaire.new()
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def questionnaire_params
      params.require(:questionnaire).permit(:need_chairs, :need_table, :event_contact_person_name, :event_contact_person_phone, :hygiene_person, :invitation_number, :correspondence_address, :badges_number, :participate_exhibit, :exhibit_items, :participate_lottary, :lottary_items, :participate_sampling, :sampling_hours, :electricity_consumption, :plugs_number, :car_registration_number, :printed_label, :gcf_website_name, :gcf_website_url, :gcf_website_description, :gcf_website_address, :participate_presentation, :presentation_topic, :presentation_speaker, :participant_comments, :terms_of_service)
    end
end
