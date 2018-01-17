class BlogPostsController < ApplicationController
  #the index function is actually a method, and methods are tables

    before_action :set_blog_post, only: [:show, :edit, :update, :destroy]

    def index
      #instance variable called blog_posts
      @blog_posts = BlogPost.all
    end

    def show
    end

    def edit
    end

    def new
      @blog_post = BlogPost.new
    end

    def create
    @blog_post = BlogPost.new(blog_post_params)

    respond_to do |format|
      if @blog_post.save
        format.html {redirect_to blog_post_path(@blog_post), notice: 'Your blog post was created successfully!'}
      else
        format.html {render :new}
      end
    end
  end

    def update
    respond_to do |format|
      if @blog_post.update(blog_post_params)
        format.html {redirect_to blog_post_path(@blog_post), notice: 'Your blog post was updated!'}
      else
        format.html {render :edit}
      end
    end
  end

    def destroy
      @blog_post.destroy
            respond_to do |format|
          format.html {redirect_to  blog_posts_path}
        end
    end

    private

    def set_blog_post
      @blog_post = BlogPost.find(params[:id])
    end

    def blog_post_params
      params.require(:blog_post).permit(:title, :author, :blog_entry)
    end
end
