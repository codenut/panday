Rails.application.routes.draw do
  devise_for :people, path: 'auth', path_names: {
    sign_in: 'login', sign_out: 'logout', registration: 'register',
    confirmation: 'verification', unlock: 'unblock' }
end
