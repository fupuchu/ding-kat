class MenusController < ApplicationController
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
                    @error = "ERROR, END DATE HAS TO BE AFTER START DATE"
                    render delivery_path
                else
                    redirect_to new_user_session_path
                end
            end
        end
    end

    def payment
        @user = User.find(current_user.id)
        @menu = Menu.find(@user.menu_id)
    end
    
    def cancel_delivery
        @user = User.find(current_user.id)
        @user.update_attribute(:menu_id, nil)
        @user.update_attribute(:subscription_renew, false)
        @user.update_attribute(:delivery_arranged, false)
        redirect_to profile_path
    end

    private def delivery_params
        params.require(:user).permit(:subscription_start, :subscription_end, :subscription_renew, :address_one, :address_two, :postal_code)
    end
end
