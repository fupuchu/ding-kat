class MenusController < ApplicationController
    def index
        @menus = Menu.all
        if current_user
            if User.find(current_user.id) != nil
                @user = User.find(current_user.id)
                @current = User.find(current_user.id).menu_id
                if @current != nil
                    @menu = Menu.find(@user.menu_id)
                end
            end
        end
    end

    def show
        @menu = Menu.find(params[:id])
    end

end
