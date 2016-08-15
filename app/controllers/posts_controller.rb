class PostsController < ApplicationController
    before_action :require_user, only: [ :new, :create]
    def new
        @proflecture = Proflecture.find_by_id((params[:proflectureId]).to_i)
        @post = Post.new
    end
    def create
        @post = Post.new(post_params)
        
        if @post.save
            redirect_to '/posts/show?post=' + @post.id.to_s
        else
            redirect_to '/'
        end
    end
    def show
        @post = Post.find(params[:post])
    end

    
    private 
    def post_params
        params.require(:post).permit(:title, :body, :proflecture_id, :user_id)
    end

end
