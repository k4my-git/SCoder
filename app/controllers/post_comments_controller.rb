class PostCommentsController < ApplicationController
	def create
	    code = Code.find(params[:code_id])
	    comment = current_user.post_comments.new(post_comment_params)
	    comment.code_id = code.id
	    comment.save
	    redirect_to code_path(code)
	end

  	def destroy
  		PostComment.find_by(id: params[:id], code_id: params[:code_id]).destroy
    	redirect_to code_path(params[:code_id])
  	end

  	private
	def post_comment_params
	   	params.require(:post_comment).permit(:comment)
	end
end
