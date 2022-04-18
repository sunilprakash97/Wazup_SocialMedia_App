class Api::PostsController < ApiController
		
    def index
        render json: Post.all
    end

    def show
		post = Post.find_by(id: params[:id])
		if post
            render json: post, include: [:likes, :comments]
		else
			render json: {error: 'Post not found'}, status: 404
		end
	end

    def search
        render json: Post.where('content LIKE ?', "%#{params[:content]}%"), include: [:likes, :comments] 
    end

    def create
        user = User.find(params[:user_id])
        post = user.posts.new(content: params[:content])
        if post.save
            render json: post
        else
            render json: {error: 'Cannot create post'}, status:404
        end
    end
end
