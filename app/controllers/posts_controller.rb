class PostsController < ApplicationController

    def show
        @post = Post.find(params[:post])
    end

end
