class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :check_ownership!, only: [:destroy]
    
    def create
        new_comment = Comment.new(user_id: current_user.id, post_id: params[:post_id], content: params[:content])
        
        if new_comment.save
            redirect_to :back
        else
            redirect_to root_path
        end
    end
    
    def destroy
        @comment.destroy
        redirect_to :back
    end
    
    private
    def check_ownership!
        @comment = Comment.find_by(id: params[:id])
        redirect_to root_path if @comment.user.id != current_user.id
    end
end
