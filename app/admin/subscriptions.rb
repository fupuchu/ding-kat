ActiveAdmin.register Subscription do
    permit_params :name, :email, :pusblished_at
end
