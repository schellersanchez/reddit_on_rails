class VotesController < ApplicationController
  def show
    #
  end
  def new
    #
  end
  def create
    authenticate_user!
    @vote = current_user.votes.create(params[:vote])
    redirect_to :back
  end
end
