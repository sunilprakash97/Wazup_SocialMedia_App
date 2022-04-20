class Api::V1::PostsController < ApiController
  before_action :authorize_request
  before_action :set_post, only: [:show, :destroy, :update]

  def index
    @posts = Post.all
    render layout: 'layouts/api'
  end

  def show
    render layout: 'layouts/api'
  end

  def create
    @post = current_user.posts.new(posts_params)
    if @post.save
      if params[:images]
        params[:images].each do |img|
          @post.photos.create(image: params[:images][img])
        end
      end
      render layout: 'layouts/api'
    else
      error_json_response @post.errors.full_messages, :bad_request
    end
  end

  def update
    if @post.update(posts_params)
      @message = "Successfully updated"
      render layout: 'layouts/api'
    else
      error_json_response @post.errors.full_messages, :bad_request
    end
  end

  def destroy
    if @post.destroy
      success_json_response({message: "Destroyed successfully."})
    else
      error_json_response @post.errors.full_messages, :bad_request
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def posts_params
    params.require(:post).permit :content
  end
end