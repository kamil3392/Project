class TicketsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
  end
    def create
    @article = Article.find(params[:article_id])
      @ticket = @article.tickets.create(ticket_params)
    redirect_to article_path(@article)
  end
  private
  def ticket_params
    params.require(:ticket).permit(:title,:descryption,:priority,:rank,:status)
    end

end

