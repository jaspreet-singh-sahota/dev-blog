class WelcomeController < ApplicationController
  def create
    @vote = current_user.votes.new(article_id: params[:article_id])
    if @vote.save
      redirect_to request.referer, notice: 'Vote added.'
    end
  end

  def destroy
    @vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if @vote
      @vote.destroy
      redirect_to request.referer, notice: 'You downvoted an article.'
    end
  end
end
