class HomeController < ApplicationController
    def index
    end

    def profile
        if current_user
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
end
