class TagsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    debugger
    @tag = @post.tags.create(params[:name])
    redirect_to post_path(@post)
  end

end
