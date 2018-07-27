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
        @user = User.find(current_user.id)
        @user.update_attribute(:subscription_id, params[:id])
        redirect_to profile_path
    end

    def unsubscribe
        @user = User.find(current_user.id)
        @user.update_attribute(:subscription_id, nil)
        redirect_to subscriptions_path
    end


end
