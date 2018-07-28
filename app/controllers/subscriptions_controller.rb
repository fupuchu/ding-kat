class SubscriptionsController < ApplicationController
    def index
        @menus = Menu.all
        @subs = Subscription.all
        if current_user
            if User.find(current_user.id) != nil
                @user = User.find(current_user.id)
                @current = User.find(current_user.id).subscription_id
                if @current != nil
                    @subscription = Subscription.find(@user.subscription_id)
                end
            end
        end
    end
    # View all available subscriptions

    def show
        @sub = Subscription.find(params[:id])
    end
    # View a particular subscription

    
    

    # May need to generate user controller for user to view their data
    
    # Do routes for when someone subscribes
    # when user subscribes, save subscription.id to the user
    # in rails console: user.subscriptions << Subscription.first(Or by the id)
end
