class SubscriptionsController < ApplicationController
    def index
        @subs = Subscription.all
    end
    # View all available subscriptions

    def show
        @sub = Subscription.find(params[:id])
        @user = User.find(current_user.id)
    end
    # View a particular subscription

    
    

    # May need to generate user controller for user to view their data
    
    # Do routes for when someone subscribes
    # when user subscribes, save subscription.id to the user
    # in rails console: user.subscriptions << Subscription.first(Or by the id)
end
