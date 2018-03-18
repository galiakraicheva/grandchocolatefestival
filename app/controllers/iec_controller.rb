class IecController < ApplicationController

  def index
    @participants = Participant.all
  end

end
