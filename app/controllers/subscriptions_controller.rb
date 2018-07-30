class SubscriptionsController < ApplicationController
    def index
        @menus = Menu.all
        @subs = Subscription.all
        if current_user
            @user = User.find(current_user.id)
            @current = @user.subscription_id
            if @current != nil
                @subscription = Subscription.find(@current)
            end
        end
    end
    # View all available subscriptions

    def subscribe
        if current_user
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

    
    

    # May need to generate user controller for user to view their data
    
    # Do routes for when someone subscribes
    # when user subscribes, save subscription.id to the user
    # in rails console: user.subscriptions << Subscription.first(Or by the id)
end
