class PostsController < AplicationController
  def index
    @posts = Post.all
  end
end
