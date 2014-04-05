class CommentsController < ApplicationController
  def create
  	post = Post.find(params[:post_id])
  	if post.comments.create(comment_params)
  		redirect_to post, :notice => "Merci de votre commentaire"
  	else
  		redirect_to post
  	end
  end

  private
  def comment_params
     params.require(:comment).permit(:author, :text, :post_id)
  end
end
