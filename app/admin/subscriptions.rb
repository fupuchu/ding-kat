ActiveAdmin.register Subscription do
    permit_params :name, :price, :pusblished_at
end
