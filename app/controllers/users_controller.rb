class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            redirect_to '/'
        else
            redirect_to '/signup'
        end
    end
    
    def ratingproflecture
        current_user.rtproflecture[params[:proflectureid.to_s]] = params[:rtproflecture].to_i
        if current_user.save
            redirect_to '/'
        end
    end

    private
        def user_params
            params.require(:user).permit(:name, :studentNumber, :password)
        end

        def rating_params
            a=params[:proflectureid].to_i
            params.permit(a, :rtproflecture)
        end

end
