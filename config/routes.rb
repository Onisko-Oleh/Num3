Rails.application.routes.draw do
  # standard devise routes available at /users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :api do
    namespace :v1 do
       # token auth routes available at /api/v1/auth
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
end
