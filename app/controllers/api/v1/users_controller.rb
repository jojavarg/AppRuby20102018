module Api
    module V1
        class UsersController < ApplicationController
            def index #GET
                @users=User.order('updated_at DESC')
                if @users
                    render json:@users
                else
                    render json:@users.errors, status: :unprocessable_entity
                end
            end
            def show #GET/PARAMS
                @user=User.find(params[:id])
                if @user
                    render json:@user
                else
                    render json:@user.errors, status: :unprocessable_entity
                end
            end
            def update #PUT PATCH /PARAMS

            end
            def destroy #DELETE/PARAMS

            end
            def create #POST/PARAMS
                @user = User.new(user_params)
                if @user.save
                    render json: @user, status: :created
                else
                    render json: @user.errors, status: :unprocessable_entity
                end
            end

            private
            def user_params
                params.require(:user).permit(:name)
            end



        end
    end
end