class UsersController < ApplicationController
    def index
        @userSubscriptions = Subscription.joins(:subscriptions_users).where("subscriptions_users.user_id = ?", current_user.id)
    end
    
    def show
    end


    # May need to generate user controller for user to view their data
    
    # Do routes for when someone subscribes
    # when user subscribes, save subscription.id to the user
    # in rails console: user.subscriptions << Subscription.first(Or by the id)
end
