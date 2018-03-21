class FeedbacksController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :set_feedback, only: [:show, :edit, :update]

  def index
    @participants = Participant.all
  end


  def new
    @participant = Participant.find_by!(access_token: params[:access_token])
    @feedback = @participant.feedback || Feedback.new
  end


  def show
  end

  def edit
  end


  def create
    @feedback = Feedback.new(feedback_params)
    @participant = Participant.find_by!(access_token: params[:access_token])

    respond_to do |format|
      if @feedback.save
        @participant.feedback_id = @feedback.id
        @participant.save!

        format.html { redirect_to feedback_path(id: @participant.access_token), notice: 'Благодарим за обратната връзка!' }
        format.json { render :show, status: :created, location: @feedback }
      else
        format.html { render :new }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feedbacks/1
  # PATCH/PUT /feedbacks/1.json
  def update
    respond_to do |format|
      if @feedback.update(feedback_params)
        @participant.feedback_id = @feedback.id
        @participant.save!

        format.html { redirect_to feedback_path(id: @participant.access_token), notice: 'Благодарим за обратната връзка!' }
        format.json { render :show, status: :ok, location: @feedback }
      else
        format.html { render :edit }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedback
      @participant = Participant.find_by!(access_token: params[:id])
      @feedback = @participant.feedback || Feedback.new()
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def feedback_params
      params.require(:feedback).permit(:year_participation, :stand_size, :stand_price, :communication_with_organizer, :ad_coverage, :communication_with_visitors, :visitor_interest, :visitor_number, :stand_attractions, :participation_improvements, :organization_improvements, :comments)
    end
end
