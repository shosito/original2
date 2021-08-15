class UsersController < ApplicationController
    
    def show
        @nickname = current_user.nickname
        @contents = Content.where(user_id: current_user.id)
    end
    
end
