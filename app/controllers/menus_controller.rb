class MenusController < ApplicationController
    before_action :authenticate_user!
    def index
        @menus = Menu.all
        if current_user
            @user = User.find(current_user.id)
            @current = @user.menu_id
            if @current != nil
                @menu = Menu.find(@current)
            end
        end
    end

    def select_menu
        if current_user
            @user = User.find(current_user.id)
            @user.update_attribute(:menu_id, params[:id])
            redirect_to menus_path
        else
            redirect_to new_user_session_path
        end
    end

    def unselect_menu
        @user = User.find(current_user.id)
        @user.update_attribute(:menu_id, nil)
        redirect_to menus_path
    end

    def delivery
        if current_user
            @user = User.find(current_user.id)
            if @user.menu_id != nil
                @menu = Menu.find(@user.menu_id)
            end
        else
            redirect_to new_user_session_path
        end
    end

    def select_delivery
        if current_user
            @user = User.find(current_user.id)
            if @user.update(delivery_params)
                @user.update_attribute(:delivery_arranged, true)
                redirect_to payment_path
            else
                if @user.menu_id != nil
                    @menu = Menu.find(@user.menu_id)
                    render delivery_path
                else
                    redirect_to new_user_session_path
                end
            end
        end
    end

    private def delivery_params
        params.require(:user).permit(:subscription_start, :subscription_end, :subscription_renew, :address_one, :address_two, :postal_code)
    end
end