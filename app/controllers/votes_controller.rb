class VotesController < ApplicationController
  before_action :up_vote_params, only: [:create]
  before_action :down_vote_params, only: [:destroy]

  def create
    if @vote.save
      redirect_to request.referer
    else
      flash[:notice] = 'Something when wrong'
    end
  end

  def destroy
    if @vote
      @vote.destroy
      redirect_to request.referer
    else
      flash[:notice] = 'Something when wrong'
    end
  end

  private

  def up_vote_params
    @vote = current_user.votes.new(article_id: params[:article_id])
  end

  def down_vote_params
    @vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
  end
end
