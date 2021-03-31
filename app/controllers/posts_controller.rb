class PostsController < ApplicationController
    before_action :load_post, only: [:show, :edit, :destroy, :update]

    def index
        @posts = Post.all
    end

    def show
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to action: :index
    end

    def edit
    end

    def update
        @post.update(post_params)
        redirect_to action: :show
    end

    def destroy
        @post.destroy
        redirect_to action: :index
    end

    private

    def load_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :body)
    end
end
