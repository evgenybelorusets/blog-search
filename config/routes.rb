Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get ':category', to: 'posts#index', constraints: lambda {|req| Post.pluck(:category).uniq.include?(req.params[:category]) }
  get ':category/:slug', to: 'posts#show', constraints: lambda {|req| Post.pluck(:category).uniq.include?(req.params[:category]) }
end
