class VotesController < ApplicationController
  def show
    #
  end
  def new
    #
  end
  def create
    authenticate_user!

    # if vote exists, edit the vote.
    # else create new vote
    @vote = Vote.where(:link_id => params[:vote][:link_id], :user_id => current_user.id).first
    if @vote
      @vote.up = params[:vote][:up]
      @vote.save
    else
     @vote = current_user.votes.create(params[:vote])
    end
    redirect_to :back
  end
end
