class HomeController < ApplicationController
    def index
    end

    def profile
        if current_user != nil
            @user = User.find(current_user.id)
            if @user.subscription_id != nil
                @subscription = Subscription.find(@user.subscription_id)
            end
        end
    end

    def about
        
    end

    def contact
    end

    def catering
    end

    def how
    end

    def faq
    end

    def subscribe
        if current_user != nil
            @user = User.find(current_user.id)
            @user.update_attribute(:subscription_id, params[:id])
            redirect_to subscriptions_path
        else
            redirect_to new_user_session_path
        end
    end

    def unsubscribe
        @user = User.find(current_user.id)
        @user.update_attribute(:subscription_id, nil)
        redirect_to subscriptions_path
    end

    def select_menu
        if current_user != nil
            @user = User.find(current_user.id)
            @user.update_attribute(:menu_id, params[:id])
            redirect_to menus_path
        else
            redirect_to new_user_session_path
        end
    end

end
