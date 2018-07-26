class UsersController < ApplicationController
    def index
        @user = User.find(current_user.id)
        if @user.subscription_id != nil
            @subscription = Subscription.find(@user.subscription_id)
        end
    end
    
    def update
    end

    def show
    end

    # May need to generate user controller for user to view their data
    
    # Do routes for when someone subscribes
    # when user subscribes, save subscription.id to the user
    # in rails console: user.subscriptions << Subscription.first(Or by the id)
end
