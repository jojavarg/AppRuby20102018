module Api
    module V1
        class PostsController < ApplicationController
            def index #GET
                @posts=Post.order('updated_at DESC')
                if @posts
                    render json:@posts
                else
                    render json:@posts.errors, status: :unprocessable_entity
                end
            end
            def show #GET/PARAMS
                @post=Post.find(params[:id])
                if @post
                    render json:@post
                else
                    render json:@post.errors, status: :unprocessable_entity
                end
            end
            def update #PUT PATCH /PARAMS

            end
            def destroy #DELETE/PARAMS

            end
            def create #POST/PARAMS

            end
        end
    end
end