class BabhController < ApplicationController

  def index
    @participants = Participant.all
  end

end
