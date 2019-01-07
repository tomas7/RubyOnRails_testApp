class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)

        redirect_to post_path(@post)

    end

    def destroy 
        @post = Post.find(params[:post_id])
        puts "POST VAR #{@post}" 
        @comment = @post.comments.find(params[:id])
        puts "POST VAR 2 #{@comment}" 
        @comment.destroy

        redirect_to post_path(@post)
    end

    private def comment_params
        params.require(:comment).permit(:username, :body)
    end
end
