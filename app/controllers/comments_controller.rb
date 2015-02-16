class CommentsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  
  def create
    @article = Article.find(params[:article_id])
    if params[:comment_id]
      @comment = Comment.find(params[:comment_id])
      @comment_to_comment = @comment.comments.create(comment_params)
    else
      @comment = @article.comments.create(comment_params)
    end
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
